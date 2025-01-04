class FirebaseExceptionHandler {
  // Authentication Exceptions
  static String handleAuthException(dynamic e) {
    String errorMessage = "حدث خطأ غير معروف";

    if (e.code != null) {
      switch (e.code) {
        // Email & Password Sign In/Up Errors
        case 'email-already-in-use':
          errorMessage = 'يوجد حساب مسجل بهذا البريد الإلكتروني';
          break;
        case 'invalid-email':
          errorMessage = 'يرجى إدخال بريد إلكتروني صحيح';
          break;
        case 'operation-not-allowed':
          errorMessage = 'هذه العملية غير مسموح بها';
          break;
        case 'weak-password':
          errorMessage = 'يرجى إدخال كلمة مرور أقوى';
          break;
        case 'user-disabled':
          errorMessage = 'تم تعطيل هذا الحساب';
          break;
        case 'user-not-found':
          errorMessage = 'البريد الإلكتروني أو كلمة المرور غير صحيحة';
          break;
        case 'wrong-password':
          errorMessage = 'البريد الإلكتروني أو كلمة المرور غير صحيحة';
          break;
        case 'invalid-verification-code':
          errorMessage = 'رمز التحقق غير صالح';
          break;
        case 'invalid-verification-id':
          errorMessage = 'معرف التحقق غير صالح';
          break;
        case 'quota-exceeded':
          errorMessage = 'تم تجاوز الحد المسموح به. يرجى المحاولة لاحقاً';
          break;

        // Social Auth Errors
        case 'account-exists-with-different-credential':
          errorMessage =
              'يوجد حساب بنفس البريد الإلكتروني ولكن بطريقة تسجيل دخول مختلفة';
          break;
        case 'invalid-credential':
          errorMessage = 'البريد الإلكتروني أو كلمة المرور غير صحيحة';
          break;
        case 'user-cancelled':
          errorMessage = 'تم إلغاء تسجيل الدخول من قبل المستخدم';
          break;

        // Password Reset Errors
        case 'expired-action-code':
          errorMessage = 'انتهت صلاحية رابط إعادة تعيين كلمة المرور';
          break;
        case 'invalid-action-code':
          errorMessage = 'رابط إعادة تعيين كلمة المرور غير صالح';
          break;
        case 'network-request-failed':
          errorMessage = 'لا يوجد اتصال بالإنترنت';
          break;
      }
    }
    return errorMessage;
  }

  // Firestore Database Exceptions
  static String handleDatabaseException(dynamic e) {
    String errorMessage = "حدث خطأ في قاعدة البيانات";

    if (e.code != null) {
      switch (e.code) {
        case 'permission-denied':
          errorMessage = 'ليس لديك صلاحية لتنفيذ هذه العملية';
          break;
        case 'unavailable':
          errorMessage = 'الخدمة غير متوفرة حالياً. يرجى المحاولة لاحقاً';
          break;
        case 'not-found':
          errorMessage = 'لم يتم العثور على المستند المطلوب';
          break;
        case 'already-exists':
          errorMessage = 'يوجد مستند بنفس المعرف';
          break;
        case 'cancelled':
          errorMessage = 'تم إلغاء العملية';
          break;
        case 'data-loss':
          errorMessage = 'فقدان أو تلف في البيانات لا يمكن استرداده';
          break;
        case 'failed-precondition':
          errorMessage = 'فشلت العملية بسبب شرط مسبق';
          break;
        case 'resource-exhausted':
          errorMessage = 'تم تجاوز حد الموارد المتاحة';
          break;
        case 'unimplemented':
          errorMessage = 'هذه العملية غير مدعومة';
          break;
      }
    }
    return errorMessage;
  }

  // Storage Exceptions
  static String handleStorageException(dynamic e) {
    String errorMessage = "حدث خطأ في التخزين";

    if (e.code != null) {
      switch (e.code) {
        case 'storage/unknown':
          errorMessage = 'حدث خطأ غير معروف';
          break;
        case 'storage/object-not-found':
          errorMessage = 'الملف غير موجود';
          break;
        case 'storage/bucket-not-found':
          errorMessage = 'لم يتم العثور على سلة التخزين';
          break;
        case 'storage/project-not-found':
          errorMessage = 'لم يتم العثور على المشروع';
          break;
        case 'storage/quota-exceeded':
          errorMessage = 'تم تجاوز سعة التخزين المتاحة';
          break;
        case 'storage/unauthenticated':
          errorMessage = 'المستخدم غير مصرح له';
          break;
        case 'storage/unauthorized':
          errorMessage = 'المستخدم غير مخول';
          break;
        case 'storage/retry-limit-exceeded':
          errorMessage = 'تم تجاوز الحد الأقصى لمحاولات إعادة المحاولة';
          break;
        case 'storage/invalid-checksum':
          errorMessage = 'عدم تطابق في التحقق من سلامة الملف';
          break;
        case 'storage/canceled':
          errorMessage = 'تم إلغاء العملية';
          break;
      }
    }
    return errorMessage;
  }

  static String handleGoogleSignInException(dynamic e) {
    String errorMessage = "حدث خطأ";
    if (e.code != null) {
      switch (e.code) {
        case 'network_error':
          errorMessage = 'لا يوجد اتصال بالإنترنت';
          break;
        case 'sign_in_failed':
          errorMessage = " فشل في تسجيل الدخول. يرجى المحاولة مرة أخرى";
        case 'sign_in_canceled':
          errorMessage = 'تم إلغاء تسجيل الدخول';
          break;
        case 'play_services_not_available':
          errorMessage = 'خدمات Google Play غير متوفرة';
        default:
          errorMessage = "حدث خطأ غير معروف";
      }
    }
    return errorMessage;
  }

  // General Firebase Exceptions
  static String handleGeneralException(dynamic e) {
    String errorMessage = "حدث خطأ";

    if (e.code != null) {
      switch (e.code) {
        case 'network-request-failed':
          errorMessage = 'لا يوجد اتصال بالإنترنت';
          break;
        case 'timeout':
          errorMessage = 'انتهت مهلة العملية';
          break;
        case 'too-many-requests':
          errorMessage = 'طلبات كثيرة جداً. يرجى المحاولة لاحقاً';
          break;
        default:
          errorMessage = "حدث خطأ غير معروف";
      }
    }
    return errorMessage;
  }

  // Helper method to handle any Firebase exception
  static String handleException(dynamic e) {
    if (e.toString().contains('auth')) {
      return handleAuthException(e);
    } else if (e.toString().contains('firestore')) {
      return handleDatabaseException(e);
    } else if (e.toString().contains('storage')) {
      return handleStorageException(e);
    } else {
      return handleGeneralException(e);
    }
  }
}
