.class public final Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public guideDialog:Landroid/app/AlertDialog;

.field public isTriggered:Z

.field public keyCode:I

.field public final registerAppRunnable:Lcom/android/server/policy/PhoneWindowManagerExt$HotKey$registerAppRunnable;

.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManagerExt;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->isTriggered:Z

    .line 8
    .line 9
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->keyCode:I

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->guideDialog:Landroid/app/AlertDialog;

    .line 13
    .line 14
    new-instance p1, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey$registerAppRunnable;

    .line 15
    .line 16
    invoke-direct {p1, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey$registerAppRunnable;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->registerAppRunnable:Lcom/android/server/policy/PhoneWindowManagerExt$HotKey$registerAppRunnable;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final saLogging(ILjava/lang/String;Z)V
    .locals 0

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :pswitch_0
    if-eqz p3, :cond_0

    .line 6
    .line 7
    const-string p1, "PKBD0030"

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string p1, "PKBD0031"

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :pswitch_1
    if-eqz p3, :cond_1

    .line 14
    .line 15
    const-string p1, "PKBD0028"

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const-string p1, "PKBD0029"

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :pswitch_2
    if-eqz p3, :cond_2

    .line 22
    .line 23
    const-string p1, "PKBD0026"

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    const-string p1, "PKBD0027"

    .line 27
    .line 28
    :goto_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-static {p1, p2}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_data_0
    .packed-switch 0x442
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
