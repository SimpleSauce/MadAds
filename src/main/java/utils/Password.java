package utils;

import org.mindrot.jbcrypt.BCrypt;

public class Password {
    final static int numberOfRounds = 12;

    public static String hashPassword(String password) {
        return BCrypt.hashpw(password, BCrypt.gensalt(numberOfRounds));
    }

    public static boolean attempt(String password, String hashedPw) {
        return BCrypt.checkpw(password, hashedPw);
    }


}
