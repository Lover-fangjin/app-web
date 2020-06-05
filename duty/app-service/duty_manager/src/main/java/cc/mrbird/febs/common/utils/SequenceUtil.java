package cc.mrbird.febs.common.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by Administrator on 2020/3/17.
 */
public class SequenceUtil {

    private static int length = 4;

    /**
     * 按时间生成编号
     */
    public static synchronized Long getLocalTrmSeqNum(int sequence) {
        sequence = sequence >= 9999 ? 1 : sequence + 1;
        String datetime = new SimpleDateFormat("yyyyMMdd").format(new Date());
        String s = Integer.toString(sequence);
        return Long.parseLong(datetime + addLeftZero(s, length));
    }

    /**
     * 生成值班编号
     * 2020/03/29
     */
    public static synchronized String getDutyNo(Long sequence) {
        sequence = sequence >= 9999 ? 1 : sequence;
        String datetime = new SimpleDateFormat("yyyyMMdd").format(new Date());
        String s = Long.toString(sequence);
        return addLeftZero(s, length) + datetime;
    }

    /**
     * 左填0
     */
    public static String addLeftZero(String s, int length) {
        int old = s.length();
        if (length > old) {
            char[] c = new char[length];
            char[] x = s.toCharArray();
            if (x.length > length) {
                throw new IllegalArgumentException(
                        "Numeric value is larger than intended length: " + s
                                + " LEN " + length);
            }
            int lim = c.length - x.length;
            for (int i = 0; i < lim; i++) {
                c[i] = '0';
            }
            System.arraycopy(x, 0, c, lim, x.length);
            return new String(c);
        }
        return s.substring(0, length);
    }
}
