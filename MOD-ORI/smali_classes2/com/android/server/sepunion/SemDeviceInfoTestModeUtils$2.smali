.class public final Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$2;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$2;->this$0:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$2;->this$0:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string p2, "deviceinfo_test_mode"

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    sput p1, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->sCurrentTestMode:I

    .line 17
    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string/jumbo p2, "updateDeviceInfoTestMode() sCurrentTestMode = "

    .line 21
    .line 22
    .line 23
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sget p2, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->sCurrentTestMode:I

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string p2, "SemDeviceInfoTestModeUtils"

    .line 36
    .line 37
    invoke-static {p2, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$2;->this$0:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->mTestModeChangeHandler:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$1;

    .line 43
    .line 44
    const-wide/16 p1, 0x1f4

    .line 45
    .line 46
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 47
    .line 48
    .line 49
    return-void
.end method
