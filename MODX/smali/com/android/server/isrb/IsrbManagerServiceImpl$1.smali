.class public final Lcom/android/server/isrb/IsrbManagerServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/isrb/IsrbManagerServiceImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$1;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const-string p2, "android.intent.action.SCREEN_ON"

    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_2

    .line 13
    iget-object p2, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$1;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    .line 15
    iget-boolean p2, p2, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mIsSystemErrPopup:Z

    .line 17
    if-nez p2, :cond_2

    .line 19
    const-string/jumbo p1, "sys.isrb.networkcrash"

    .line 22
    const/4 p2, 0x0

    .line 23
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 26
    move-result p1

    .line 27
    const/4 p2, 0x1

    .line 28
    xor-int/2addr p1, p2

    .line 29
    if-nez p1, :cond_0

    .line 31
    iget-object p1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$1;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    .line 33
    iget p1, p1, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mErrAlertNum:I

    .line 35
    const/16 v0, 0xc

    .line 37
    if-lt p1, v0, :cond_0

    .line 39
    return-void

    .line 40
    :cond_0
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    .line 43
    move-result-object p1

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 47
    move-result-wide v0

    .line 48
    invoke-virtual {p1, v0, v1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 51
    const/16 v0, 0xb

    .line 53
    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    .line 56
    move-result v0

    .line 57
    invoke-virtual {p1, p2}, Landroid/icu/util/Calendar;->get(I)I

    .line 60
    move-result p2

    .line 61
    iget-object v1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$1;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    .line 63
    iget v1, v1, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mPreviousTipsYear:I

    .line 65
    if-ne p2, v1, :cond_1

    .line 67
    const/4 p2, 0x2

    .line 68
    invoke-virtual {p1, p2}, Landroid/icu/util/Calendar;->get(I)I

    .line 71
    move-result p2

    .line 72
    iget-object v1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$1;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    .line 74
    iget v1, v1, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mPreviousTipsMonth:I

    .line 76
    if-ne p2, v1, :cond_1

    .line 78
    const/4 p2, 0x5

    .line 79
    invoke-virtual {p1, p2}, Landroid/icu/util/Calendar;->get(I)I

    .line 82
    move-result p1

    .line 83
    iget-object p2, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$1;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    .line 85
    iget v1, p2, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mPreviousTipsDate:I

    .line 87
    if-ne p1, v1, :cond_1

    .line 89
    iget p1, p2, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mPreviousTipsTime:I

    .line 91
    add-int/lit8 p2, p1, 0x6

    .line 93
    if-ge v0, p2, :cond_1

    .line 95
    if-ge v0, p1, :cond_3

    .line 97
    :cond_1
    iget-object p0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$1;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    .line 99
    invoke-virtual {p0}, Lcom/android/server/isrb/IsrbManagerServiceImpl;->showSystemErrDialog()V

    .line 102
    goto :goto_0

    .line 103
    :cond_2
    const-string/jumbo p2, "com.samsung.isrb.SYSTEM_UPDATE"

    .line 106
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    move-result p1

    .line 110
    if-eqz p1, :cond_3

    .line 112
    new-instance p1, Landroid/content/Intent;

    .line 114
    const-string/jumbo p2, "com.samsung.intent.action.LAUNCH_SOFTWARE_UPDATE_NON_SYSTEM"

    .line 117
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    const p2, 0x10000020

    .line 123
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 126
    iget-object p0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$1;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    .line 128
    iget-object p0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 130
    const-string/jumbo p2, "com.samsung.permission.LAUNCH_SOFTWARE_UPDATE"

    .line 133
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 136
    const-string p0, "IsrbManagerServiceImpl"

    .line 138
    const-string p1, "Sent SW update broadcast to FOTA modul."

    .line 140
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_3
    :goto_0
    return-void
.end method
