.class public final synthetic Lcom/android/server/adb/AdbService$AdbSettingsObserver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/adb/AdbService;

    .line 4
    .line 5
    check-cast p2, Ljava/lang/Boolean;

    .line 6
    .line 7
    packed-switch p0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    check-cast p3, Ljava/lang/Byte;

    .line 15
    .line 16
    invoke-virtual {p3}, Ljava/lang/Byte;->byteValue()B

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-nez p2, :cond_0

    .line 21
    .line 22
    iput-boolean p0, p1, Lcom/android/server/adb/AdbService;->mIsAdbUsbEnabled:Z

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p3, 0x1

    .line 26
    if-ne p2, p3, :cond_1

    .line 27
    .line 28
    iput-boolean p0, p1, Lcom/android/server/adb/AdbService;->mIsAdbWifiEnabled:Z

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    sget p2, Lcom/android/server/adb/AdbService;->$r8$clinit:I

    .line 32
    .line 33
    :goto_0
    const-string p2, "adbd"

    .line 34
    .line 35
    if-eqz p0, :cond_2

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    const-string/jumbo p0, "ctl.start"

    .line 41
    .line 42
    .line 43
    invoke-static {p0, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    iget-boolean p0, p1, Lcom/android/server/adb/AdbService;->mIsAdbUsbEnabled:Z

    .line 48
    .line 49
    if-nez p0, :cond_3

    .line 50
    .line 51
    iget-boolean p0, p1, Lcom/android/server/adb/AdbService;->mIsAdbWifiEnabled:Z

    .line 52
    .line 53
    if-nez p0, :cond_3

    .line 54
    .line 55
    const-string/jumbo p0, "ctl.stop"

    .line 56
    .line 57
    .line 58
    invoke-static {p0, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_3
    :goto_1
    return-void

    .line 62
    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    check-cast p3, Ljava/lang/Byte;

    .line 67
    .line 68
    invoke-virtual {p3}, Ljava/lang/Byte;->byteValue()B

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    invoke-static {p1, p0, p2}, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->$r8$lambda$QsA9Am4S85-6tzWrx_VQgRFMz-I(Lcom/android/server/adb/AdbService;ZB)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    nop

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
