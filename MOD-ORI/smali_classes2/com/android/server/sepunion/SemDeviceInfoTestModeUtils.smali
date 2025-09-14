.class public final Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final SHIPPED:Z

.field public static sCurrentTestMode:I


# instance fields
.field public final mCallback:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$OnDeviceInfoTestModeChanged;

.field public final mContext:Landroid/content/Context;

.field public final mObserver:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$2;

.field public final mTestModeChangeHandler:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    sput-boolean v0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->SHIPPED:Z

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    sput v0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->sCurrentTestMode:I

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$OnDeviceInfoTestModeChanged;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$1;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, p0, v1}, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$1;-><init>(Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->mTestModeChangeHandler:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$1;

    .line 14
    .line 15
    sget-boolean v0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->SHIPPED:Z

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const-string p0, "SemDeviceInfoTestModeUtils"

    .line 20
    .line 21
    const-string p1, "This version has been shipped!! Then device info test mode is not available"

    .line 22
    .line 23
    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iput-object p1, p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    iput-object p2, p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->mCallback:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$OnDeviceInfoTestModeChanged;

    .line 30
    .line 31
    new-instance p2, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$2;

    .line 32
    .line 33
    new-instance v0, Landroid/os/Handler;

    .line 34
    .line 35
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p2, p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$2;-><init>(Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;Landroid/os/Handler;)V

    .line 43
    .line 44
    .line 45
    const-string p0, "deviceinfo_test_mode"

    .line 46
    .line 47
    invoke-static {p0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const/4 v2, 0x0

    .line 56
    invoke-virtual {v1, v0, v2, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {p1, p0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    sput p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->sCurrentTestMode:I

    .line 68
    .line 69
    return-void
.end method
