.class public final Lcom/android/server/wm/TspGripCommand;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final MIN_REJECT_ZONE_RATIO:F


# instance fields
.field public final mCommand:Ljava/lang/String;

.field public mDeviceSize:Lcom/android/server/wm/TspStateController$DeviceSize;

.field public mLandBottomGripWidth:I

.field public mLandBottomRejectWidth:I

.field public mLandEdgeZone:I

.field public mLandTopGripWidth:I

.field public mLandTopRejectWidth:I

.field public mLandX1:I

.field public mPortEdgeZone:I

.field public mPortX1:I

.field public mPortX2:I

.field public mPortX3:I

.field public mPortY1:I

.field public mPortY2:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_TABLET_DEVICE:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const v0, 0x3be21965    # 0.0069f

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const v0, 0x3b656042    # 0.0035f

    .line 10
    .line 11
    .line 12
    :goto_0
    sput v0, Lcom/android/server/wm/TspGripCommand;->MIN_REJECT_ZONE_RATIO:F

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/wm/TspGripCommand;->mCommand:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/wm/TspGripCommand;->reset()V

    .line 8
    .line 9
    .line 10
    const-string v0, "0.35%,0.35%,0,0,2.11%,0,0.22%,0.22%,1.32%,1.32%"

    .line 11
    .line 12
    const-string v1, "0.35%,0.35%,0,0,1.41%,0,0.22%,0.22%,0.88%,0.88%"

    .line 13
    .line 14
    packed-switch p1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :pswitch_0
    const-string p1, "0.69%,1.39%,30%,1.39%,4.17%,2.55%,0.66%,0.66%,1.97%,1.97%"

    .line 19
    .line 20
    iput-object p1, p0, Lcom/android/server/wm/TspGripCommand;->mCommand:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/wm/TspGripCommand;->reset3rdParty()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :pswitch_1
    const-string p1, "0.69%,0.69%,30%,1.39%,2.78%,4.17%,0.66%,0.66%,1.97%,1.97%"

    .line 27
    .line 28
    iput-object p1, p0, Lcom/android/server/wm/TspGripCommand;->mCommand:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/server/wm/TspGripCommand;->reset3rdParty()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :pswitch_2
    iput-object v1, p0, Lcom/android/server/wm/TspGripCommand;->mCommand:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/server/wm/TspGripCommand;->reset3rdParty()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :pswitch_3
    iput-object v1, p0, Lcom/android/server/wm/TspGripCommand;->mCommand:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/android/server/wm/TspGripCommand;->reset3rdParty()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :pswitch_4
    const-string p1, "0.69%,1.39%,30%,1.39%,4.17%,4.17%,0.66%,0.66%,1.97%,1.97%"

    .line 47
    .line 48
    iput-object p1, p0, Lcom/android/server/wm/TspGripCommand;->mCommand:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/android/server/wm/TspGripCommand;->reset3rdParty()V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :pswitch_5
    iput-object v0, p0, Lcom/android/server/wm/TspGripCommand;->mCommand:Ljava/lang/String;

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :pswitch_6
    iput-object v0, p0, Lcom/android/server/wm/TspGripCommand;->mCommand:Ljava/lang/String;

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :pswitch_7
    const-string p1, "0.69%,2.22%,30%,1.39%,4.17%,4.17%,1.05%,1.05%,1.97%,1.97%"

    .line 61
    .line 62
    iput-object p1, p0, Lcom/android/server/wm/TspGripCommand;->mCommand:Ljava/lang/String;

    .line 63
    .line 64
    :goto_0
    return-void

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static convertToInt(IIILjava/lang/String;)I
    .locals 3

    .line 1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v2, "%"

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-ltz v2, :cond_1

    .line 20
    .line 21
    int-to-float p0, p1

    .line 22
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    const/high16 p2, 0x42c80000    # 100.0f

    .line 35
    .line 36
    div-float/2addr p1, p2

    .line 37
    mul-float/2addr p1, p0

    .line 38
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    return p0

    .line 43
    :cond_1
    const-string/jumbo v2, "px"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-ltz v2, :cond_2

    .line 51
    .line 52
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    int-to-float p1, p1

    .line 65
    mul-float/2addr p2, p1

    .line 66
    int-to-float p0, p0

    .line 67
    div-float/2addr p2, p0

    .line 68
    float-to-int p0, p2

    .line 69
    return p0

    .line 70
    :cond_2
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    if-ge p1, p2, :cond_3

    .line 75
    .line 76
    mul-int/2addr p0, p1

    .line 77
    div-int/2addr p0, p2

    .line 78
    :cond_3
    return p0
.end method

.method public static getValueFromBundle(Landroid/os/Bundle;Ljava/lang/String;IIII)I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-ltz v0, :cond_1

    .line 7
    .line 8
    if-ge p4, p5, :cond_0

    .line 9
    .line 10
    mul-int/2addr v0, p4

    .line 11
    div-int/2addr v0, p5

    .line 12
    :cond_0
    return v0

    .line 13
    :cond_1
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    return p2

    .line 24
    :cond_2
    invoke-static {p3, p4, p5, p0}, Lcom/android/server/wm/TspGripCommand;->convertToInt(IIILjava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    return p0
.end method


# virtual methods
.method public final convertToIntHeight(Ljava/lang/String;)I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/TspGripCommand;->mDeviceSize:Lcom/android/server/wm/TspStateController$DeviceSize;

    .line 2
    .line 3
    iget v0, p0, Lcom/android/server/wm/TspStateController$DeviceSize;->height:I

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/wm/TspStateController$DeviceSize;->initHeight:I

    .line 6
    .line 7
    const/16 v1, 0xa00

    .line 8
    .line 9
    invoke-static {v0, p0, v1, p1}, Lcom/android/server/wm/TspGripCommand;->convertToInt(IIILjava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final convertToIntLandscapeHeight(Ljava/lang/String;)I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/TspGripCommand;->mDeviceSize:Lcom/android/server/wm/TspStateController$DeviceSize;

    .line 2
    .line 3
    iget v0, p0, Lcom/android/server/wm/TspStateController$DeviceSize;->height:I

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/wm/TspStateController$DeviceSize;->initHeight:I

    .line 6
    .line 7
    const/16 v1, 0x5a0

    .line 8
    .line 9
    invoke-static {v0, p0, v1, p1}, Lcom/android/server/wm/TspGripCommand;->convertToInt(IIILjava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final convertToIntWidth(Ljava/lang/String;)I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/TspGripCommand;->mDeviceSize:Lcom/android/server/wm/TspStateController$DeviceSize;

    .line 2
    .line 3
    iget v0, p0, Lcom/android/server/wm/TspStateController$DeviceSize;->width:I

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/wm/TspStateController$DeviceSize;->initWidth:I

    .line 6
    .line 7
    const/16 v1, 0x5a0

    .line 8
    .line 9
    invoke-static {v0, p0, v1, p1}, Lcom/android/server/wm/TspGripCommand;->convertToInt(IIILjava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final parse(Lcom/android/server/wm/TspStateController$DeviceSize;Landroid/os/Bundle;)V
    .locals 11

    if-eqz p2, :cond_1c

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_DEADZONE_V3:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_16

    .line 2
    const-string v0, "deadzone_v3"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iput-object p1, p0, Lcom/android/server/wm/TspGripCommand;->mDeviceSize:Lcom/android/server/wm/TspStateController$DeviceSize;

    .line 4
    iget v3, p1, Lcom/android/server/wm/TspStateController$DeviceSize;->initWidth:I

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 6
    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 7
    array-length p2, p1

    const/4 v0, 0x0

    .line 8
    :try_start_0
    aget-object v0, p1, v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 9
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TspGripCommand;->convertToIntWidth(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mPortX1:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    const-string v0, "100%"

    const/4 v4, 0x3

    if-lt p2, v4, :cond_3

    .line 11
    :try_start_1
    aget-object v2, p1, v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 12
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TspGripCommand;->convertToIntWidth(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/TspGripCommand;->mPortX2:I

    const/4 v2, 0x2

    .line 13
    aget-object v2, p1, v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v1

    .line 14
    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TspGripCommand;->convertToIntHeight(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/TspGripCommand;->mPortY1:I

    goto :goto_3

    :catch_0
    move-exception p0

    goto/16 :goto_d

    .line 15
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TspGripCommand;->convertToIntHeight(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/TspGripCommand;->mPortY1:I

    :goto_3
    const/4 v2, 0x5

    if-lt p2, v2, :cond_6

    .line 16
    aget-object v0, p1, v4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_4
    move-object v0, v1

    .line 17
    :goto_4
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TspGripCommand;->convertToIntWidth(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mPortX3:I

    const/4 v0, 0x4

    .line 18
    aget-object v0, p1, v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_5
    move-object v0, v1

    .line 19
    :goto_5
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TspGripCommand;->convertToIntHeight(Ljava/lang/String;)I

    move-result v0

    .line 20
    iget v4, p0, Lcom/android/server/wm/TspGripCommand;->mPortY1:I

    if-lt v0, v4, :cond_7

    .line 21
    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mPortY2:I

    goto :goto_6

    .line 22
    :cond_6
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TspGripCommand;->convertToIntHeight(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mPortY2:I

    :cond_7
    :goto_6
    const/4 v0, 0x6

    if-lt p2, v0, :cond_9

    .line 23
    aget-object v2, p1, v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_8
    move-object v2, v1

    .line 24
    :goto_7
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TspGripCommand;->convertToIntWidth(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/TspGripCommand;->mLandX1:I

    :cond_9
    const/4 v2, 0x7

    if-lt p2, v2, :cond_b

    .line 25
    aget-object v0, p1, v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_a
    move-object v0, v1

    .line 26
    :goto_8
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TspGripCommand;->convertToIntWidth(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mPortEdgeZone:I

    .line 27
    :cond_b
    iget v0, p0, Lcom/android/server/wm/TspGripCommand;->mPortEdgeZone:I

    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mLandEdgeZone:I

    const/16 v0, 0x8

    if-lt p2, v0, :cond_d

    .line 28
    aget-object v2, p1, v2

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :cond_c
    move-object v2, v1

    .line 29
    :goto_9
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TspGripCommand;->convertToIntWidth(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/TspGripCommand;->mLandEdgeZone:I

    :cond_d
    const/16 v2, 0x9

    if-lt p2, v2, :cond_f

    .line 30
    aget-object v0, p1, v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_e
    move-object v0, v1

    .line 31
    :goto_a
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TspGripCommand;->convertToIntLandscapeHeight(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mLandTopRejectWidth:I

    :cond_f
    const/16 v0, 0xa

    if-lt p2, v0, :cond_11

    .line 32
    aget-object v2, p1, v2

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    :cond_10
    move-object v2, v1

    .line 33
    :goto_b
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TspGripCommand;->convertToIntLandscapeHeight(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/TspGripCommand;->mLandBottomRejectWidth:I

    :cond_11
    const/16 v2, 0xb

    if-lt p2, v2, :cond_13

    .line 34
    aget-object v0, p1, v0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_12
    move-object v0, v1

    .line 35
    :goto_c
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TspGripCommand;->convertToIntLandscapeHeight(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mLandTopGripWidth:I

    :cond_13
    const/16 v0, 0xc

    if-lt p2, v0, :cond_15

    .line 36
    aget-object p1, p1, v2

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 37
    :cond_14
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TspGripCommand;->convertToIntLandscapeHeight(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/TspGripCommand;->mLandBottomGripWidth:I

    .line 38
    :cond_15
    invoke-virtual {p0, v3}, Lcom/android/server/wm/TspGripCommand;->setMinimumValue(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_e

    .line 39
    :goto_d
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_e
    return-void

    .line 40
    :cond_16
    const-string v0, "deadzone_v2"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/wm/TspGripCommand;->parse(Lcom/android/server/wm/TspStateController$DeviceSize;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_17

    return-void

    .line 42
    :cond_17
    iget v0, p1, Lcom/android/server/wm/TspStateController$DeviceSize;->width:I

    .line 43
    iget v7, p1, Lcom/android/server/wm/TspStateController$DeviceSize;->height:I

    .line 44
    iget v8, p1, Lcom/android/server/wm/TspStateController$DeviceSize;->initWidth:I

    .line 45
    iget p1, p1, Lcom/android/server/wm/TspStateController$DeviceSize;->initHeight:I

    const/16 v6, 0x5a0

    .line 46
    const-string v2, "dead_zone_port_x1"

    const/4 v3, -0x1

    move-object v1, p2

    move v4, v0

    move v5, v8

    invoke-static/range {v1 .. v6}, Lcom/android/server/wm/TspGripCommand;->getValueFromBundle(Landroid/os/Bundle;Ljava/lang/String;IIII)I

    move-result v9

    .line 47
    const-string v2, "dead_zone_port_x2"

    invoke-static/range {v1 .. v6}, Lcom/android/server/wm/TspGripCommand;->getValueFromBundle(Landroid/os/Bundle;Ljava/lang/String;IIII)I

    move-result v1

    const/4 v10, -0x1

    if-eq v9, v10, :cond_18

    if-ne v1, v10, :cond_18

    .line 48
    iput v9, p0, Lcom/android/server/wm/TspGripCommand;->mPortX2:I

    goto :goto_f

    :cond_18
    if-eq v9, v10, :cond_19

    .line 49
    iput v9, p0, Lcom/android/server/wm/TspGripCommand;->mPortX1:I

    :cond_19
    :goto_f
    if-eq v1, v10, :cond_1a

    .line 50
    iput v1, p0, Lcom/android/server/wm/TspGripCommand;->mPortX2:I

    .line 51
    :cond_1a
    iget v3, p0, Lcom/android/server/wm/TspGripCommand;->mPortY1:I

    const/16 v6, 0xa00

    const-string v2, "dead_zone_port_y1"

    move-object v1, p2

    move v4, v7

    move v5, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/wm/TspGripCommand;->getValueFromBundle(Landroid/os/Bundle;Ljava/lang/String;IIII)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/TspGripCommand;->mPortY1:I

    .line 52
    const-string v1, "dead_zone_port_real_y1"

    invoke-virtual {p2, v1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v10, :cond_1b

    mul-int/2addr p1, v1

    .line 53
    div-int/2addr p1, v7

    .line 54
    iput p1, p0, Lcom/android/server/wm/TspGripCommand;->mPortY1:I

    .line 55
    :cond_1b
    iget v3, p0, Lcom/android/server/wm/TspGripCommand;->mLandX1:I

    const/16 v6, 0x5a0

    const-string v2, "dead_zone_land_x1"

    move-object v1, p2

    move v4, v0

    move v5, v8

    invoke-static/range {v1 .. v6}, Lcom/android/server/wm/TspGripCommand;->getValueFromBundle(Landroid/os/Bundle;Ljava/lang/String;IIII)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/TspGripCommand;->mLandX1:I

    .line 56
    iget v3, p0, Lcom/android/server/wm/TspGripCommand;->mPortEdgeZone:I

    const-string v2, "edge_zone_width"

    invoke-static/range {v1 .. v6}, Lcom/android/server/wm/TspGripCommand;->getValueFromBundle(Landroid/os/Bundle;Ljava/lang/String;IIII)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/TspGripCommand;->mPortEdgeZone:I

    .line 57
    iput v3, p0, Lcom/android/server/wm/TspGripCommand;->mLandEdgeZone:I

    .line 58
    const-string v2, "edge_zone_land"

    invoke-static/range {v1 .. v6}, Lcom/android/server/wm/TspGripCommand;->getValueFromBundle(Landroid/os/Bundle;Ljava/lang/String;IIII)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/TspGripCommand;->mLandEdgeZone:I

    .line 59
    iget v3, p0, Lcom/android/server/wm/TspGripCommand;->mPortEdgeZone:I

    const-string v2, "edge_zone_port"

    invoke-static/range {v1 .. v6}, Lcom/android/server/wm/TspGripCommand;->getValueFromBundle(Landroid/os/Bundle;Ljava/lang/String;IIII)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/TspGripCommand;->mPortEdgeZone:I

    .line 60
    invoke-virtual {p0, v8}, Lcom/android/server/wm/TspGripCommand;->setMinimumValue(I)V

    :cond_1c
    return-void
.end method

.method public final parse(Lcom/android/server/wm/TspStateController$DeviceSize;Ljava/lang/String;Z)Z
    .locals 8

    .line 61
    iput-object p1, p0, Lcom/android/server/wm/TspGripCommand;->mDeviceSize:Lcom/android/server/wm/TspStateController$DeviceSize;

    if-nez p2, :cond_0

    .line 62
    iget-object p2, p0, Lcom/android/server/wm/TspGripCommand;->mCommand:Ljava/lang/String;

    .line 63
    :cond_0
    iget v0, p1, Lcom/android/server/wm/TspStateController$DeviceSize;->height:I

    .line 64
    iget v1, p1, Lcom/android/server/wm/TspStateController$DeviceSize;->initWidth:I

    .line 65
    iget p1, p1, Lcom/android/server/wm/TspStateController$DeviceSize;->initHeight:I

    .line 66
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_17

    .line 67
    const-string v2, ","

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 68
    array-length v2, p2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-gt v2, v4, :cond_2

    .line 69
    :try_start_0
    aget-object p2, p2, v3

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 70
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/server/wm/TspGripCommand;->convertToIntWidth(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/server/wm/TspGripCommand;->mPortX2:I

    goto/16 :goto_9

    :catch_0
    move-exception p1

    goto/16 :goto_a

    .line 71
    :cond_2
    aget-object v3, p2, v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    move-object v3, v5

    .line 72
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/server/wm/TspGripCommand;->convertToIntWidth(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/TspGripCommand;->mPortX1:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_6

    .line 73
    aget-object v6, p2, v4

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_4
    move-object v6, v5

    :goto_1
    const/4 v7, 0x2

    .line 74
    aget-object v7, p2, v7

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_5
    move-object v7, v5

    .line 75
    :goto_2
    invoke-virtual {p0, v6}, Lcom/android/server/wm/TspGripCommand;->convertToIntWidth(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wm/TspGripCommand;->mPortX2:I

    .line 76
    invoke-virtual {p0, v7}, Lcom/android/server/wm/TspGripCommand;->convertToIntHeight(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wm/TspGripCommand;->mPortY1:I

    :cond_6
    const/4 v6, 0x4

    if-lt v2, v6, :cond_8

    .line 77
    aget-object v3, p2, v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_7
    move-object v3, v5

    .line 78
    :goto_3
    invoke-virtual {p0, v3}, Lcom/android/server/wm/TspGripCommand;->convertToIntWidth(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/TspGripCommand;->mLandX1:I

    :cond_8
    const/4 v3, 0x5

    if-lt v2, v3, :cond_a

    .line 79
    aget-object v6, p2, v6

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_9
    move-object v6, v5

    .line 80
    :goto_4
    invoke-virtual {p0, v6}, Lcom/android/server/wm/TspGripCommand;->convertToIntWidth(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wm/TspGripCommand;->mPortEdgeZone:I

    .line 81
    :cond_a
    iget v6, p0, Lcom/android/server/wm/TspGripCommand;->mPortEdgeZone:I

    iput v6, p0, Lcom/android/server/wm/TspGripCommand;->mLandEdgeZone:I

    const/4 v6, 0x6

    if-lt v2, v6, :cond_c

    .line 82
    aget-object v3, p2, v3

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_b
    move-object v3, v5

    .line 83
    :goto_5
    invoke-virtual {p0, v3}, Lcom/android/server/wm/TspGripCommand;->convertToIntWidth(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/TspGripCommand;->mLandEdgeZone:I

    :cond_c
    const/4 v3, 0x7

    if-lt v2, v3, :cond_e

    .line 84
    aget-object v6, p2, v6

    if-eqz v6, :cond_d

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    :cond_d
    move-object v6, v5

    .line 85
    :goto_6
    invoke-virtual {p0, v6}, Lcom/android/server/wm/TspGripCommand;->convertToIntLandscapeHeight(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wm/TspGripCommand;->mLandTopRejectWidth:I

    :cond_e
    const/16 v6, 0x8

    if-lt v2, v6, :cond_10

    .line 86
    aget-object v3, p2, v3

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_f
    move-object v3, v5

    .line 87
    :goto_7
    invoke-virtual {p0, v3}, Lcom/android/server/wm/TspGripCommand;->convertToIntLandscapeHeight(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/TspGripCommand;->mLandBottomRejectWidth:I

    :cond_10
    const/16 v3, 0x9

    if-lt v2, v3, :cond_12

    .line 88
    aget-object v6, p2, v6

    if-eqz v6, :cond_11

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    :cond_11
    move-object v6, v5

    .line 89
    :goto_8
    invoke-virtual {p0, v6}, Lcom/android/server/wm/TspGripCommand;->convertToIntLandscapeHeight(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wm/TspGripCommand;->mLandTopGripWidth:I

    :cond_12
    const/16 v6, 0xa

    if-lt v2, v6, :cond_14

    .line 90
    aget-object p2, p2, v3

    if-eqz p2, :cond_13

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 91
    :cond_13
    invoke-virtual {p0, v5}, Lcom/android/server/wm/TspGripCommand;->convertToIntLandscapeHeight(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/server/wm/TspGripCommand;->mLandBottomGripWidth:I

    .line 92
    :cond_14
    :goto_9
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_TSP_DEADZONE_V3:Z

    if-eqz p2, :cond_15

    .line 93
    iget p2, p0, Lcom/android/server/wm/TspGripCommand;->mPortX2:I

    iput p2, p0, Lcom/android/server/wm/TspGripCommand;->mPortX3:I

    .line 94
    const-string p2, "100%"

    const/16 v2, 0xa00

    invoke-static {v0, p1, v2, p2}, Lcom/android/server/wm/TspGripCommand;->convertToInt(IIILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/TspGripCommand;->mPortY2:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    .line 95
    :goto_a
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_15
    :goto_b
    if-eqz p3, :cond_16

    .line 96
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TspGripCommand;->setMinimumValue(I)V

    :cond_16
    return v4

    :cond_17
    return v3
.end method

.method public final reset()V
    .locals 2

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mPortX1:I

    .line 4
    .line 5
    const/16 v1, 0x20

    .line 6
    .line 7
    iput v1, p0, Lcom/android/server/wm/TspGripCommand;->mPortX2:I

    .line 8
    .line 9
    iput v1, p0, Lcom/android/server/wm/TspGripCommand;->mPortX3:I

    .line 10
    .line 11
    const/16 v1, 0x300

    .line 12
    .line 13
    iput v1, p0, Lcom/android/server/wm/TspGripCommand;->mPortY1:I

    .line 14
    .line 15
    const/16 v1, 0xa00

    .line 16
    .line 17
    iput v1, p0, Lcom/android/server/wm/TspGripCommand;->mPortY2:I

    .line 18
    .line 19
    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mLandX1:I

    .line 20
    .line 21
    const/16 v0, 0x3c

    .line 22
    .line 23
    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mPortEdgeZone:I

    .line 24
    .line 25
    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mLandEdgeZone:I

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mLandTopRejectWidth:I

    .line 29
    .line 30
    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mLandBottomRejectWidth:I

    .line 31
    .line 32
    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mLandTopGripWidth:I

    .line 33
    .line 34
    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mLandBottomGripWidth:I

    .line 35
    .line 36
    return-void
.end method

.method public final reset3rdParty()V
    .locals 2

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mPortX1:I

    .line 4
    .line 5
    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mPortX2:I

    .line 6
    .line 7
    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mPortX3:I

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput v1, p0, Lcom/android/server/wm/TspGripCommand;->mPortY1:I

    .line 11
    .line 12
    iput v1, p0, Lcom/android/server/wm/TspGripCommand;->mPortY2:I

    .line 13
    .line 14
    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mLandX1:I

    .line 15
    .line 16
    const/16 v0, 0x28

    .line 17
    .line 18
    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mPortEdgeZone:I

    .line 19
    .line 20
    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mLandEdgeZone:I

    .line 21
    .line 22
    return-void
.end method

.method public final set(Lcom/android/server/wm/TspGripCommand;)V
    .locals 1

    .line 1
    iget v0, p1, Lcom/android/server/wm/TspGripCommand;->mPortX1:I

    .line 2
    .line 3
    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mPortX1:I

    .line 4
    .line 5
    iget v0, p1, Lcom/android/server/wm/TspGripCommand;->mPortX2:I

    .line 6
    .line 7
    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mPortX2:I

    .line 8
    .line 9
    iget v0, p1, Lcom/android/server/wm/TspGripCommand;->mPortY1:I

    .line 10
    .line 11
    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mPortY1:I

    .line 12
    .line 13
    iget v0, p1, Lcom/android/server/wm/TspGripCommand;->mLandX1:I

    .line 14
    .line 15
    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mLandX1:I

    .line 16
    .line 17
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_DEADZONE_V3:Z

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget v0, p1, Lcom/android/server/wm/TspGripCommand;->mPortX3:I

    .line 22
    .line 23
    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mPortX3:I

    .line 24
    .line 25
    iget v0, p1, Lcom/android/server/wm/TspGripCommand;->mPortY2:I

    .line 26
    .line 27
    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mPortY2:I

    .line 28
    .line 29
    :cond_0
    iget v0, p1, Lcom/android/server/wm/TspGripCommand;->mPortEdgeZone:I

    .line 30
    .line 31
    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mPortEdgeZone:I

    .line 32
    .line 33
    iget v0, p1, Lcom/android/server/wm/TspGripCommand;->mLandEdgeZone:I

    .line 34
    .line 35
    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mLandEdgeZone:I

    .line 36
    .line 37
    iget v0, p1, Lcom/android/server/wm/TspGripCommand;->mLandTopRejectWidth:I

    .line 38
    .line 39
    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mLandTopRejectWidth:I

    .line 40
    .line 41
    iget v0, p1, Lcom/android/server/wm/TspGripCommand;->mLandBottomRejectWidth:I

    .line 42
    .line 43
    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mLandBottomRejectWidth:I

    .line 44
    .line 45
    iget v0, p1, Lcom/android/server/wm/TspGripCommand;->mLandTopGripWidth:I

    .line 46
    .line 47
    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mLandTopGripWidth:I

    .line 48
    .line 49
    iget p1, p1, Lcom/android/server/wm/TspGripCommand;->mLandBottomGripWidth:I

    .line 50
    .line 51
    iput p1, p0, Lcom/android/server/wm/TspGripCommand;->mLandBottomGripWidth:I

    .line 52
    .line 53
    return-void
.end method

.method public final setMinimumValue(I)V
    .locals 1

    .line 1
    int-to-float p1, p1

    .line 2
    sget v0, Lcom/android/server/wm/TspGripCommand;->MIN_REJECT_ZONE_RATIO:F

    .line 3
    .line 4
    mul-float/2addr p1, v0

    .line 5
    float-to-int p1, p1

    .line 6
    const/16 v0, 0xa

    .line 7
    .line 8
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iget v0, p0, Lcom/android/server/wm/TspGripCommand;->mPortX1:I

    .line 13
    .line 14
    if-ge v0, p1, :cond_0

    .line 15
    .line 16
    iput p1, p0, Lcom/android/server/wm/TspGripCommand;->mPortX1:I

    .line 17
    .line 18
    :cond_0
    iget v0, p0, Lcom/android/server/wm/TspGripCommand;->mPortX2:I

    .line 19
    .line 20
    if-ge v0, p1, :cond_1

    .line 21
    .line 22
    iput p1, p0, Lcom/android/server/wm/TspGripCommand;->mPortX2:I

    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "portX1="

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget v1, p0, Lcom/android/server/wm/TspGripCommand;->mPortX1:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ", portX2="

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget v1, p0, Lcom/android/server/wm/TspGripCommand;->mPortX2:I

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, ", portX3="

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget v1, p0, Lcom/android/server/wm/TspGripCommand;->mPortX3:I

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, ", portY1="

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget v1, p0, Lcom/android/server/wm/TspGripCommand;->mPortY1:I

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, ", portY2="

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget v1, p0, Lcom/android/server/wm/TspGripCommand;->mPortY2:I

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, ", landX1="

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget v1, p0, Lcom/android/server/wm/TspGripCommand;->mLandX1:I

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, ", portEdge="

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget v1, p0, Lcom/android/server/wm/TspGripCommand;->mPortEdgeZone:I

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v1, ", landEdge="

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget v1, p0, Lcom/android/server/wm/TspGripCommand;->mLandEdgeZone:I

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v1, ", mLandTopRejectWidth="

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget v1, p0, Lcom/android/server/wm/TspGripCommand;->mLandTopRejectWidth:I

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v1, ", mLandBottomRejectWidth="

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget v1, p0, Lcom/android/server/wm/TspGripCommand;->mLandBottomRejectWidth:I

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v1, ", mLandTopGripWidth="

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    iget v1, p0, Lcom/android/server/wm/TspGripCommand;->mLandTopGripWidth:I

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v1, ", mLandBottomGripWidth="

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    iget p0, p0, Lcom/android/server/wm/TspGripCommand;->mLandBottomGripWidth:I

    .line 120
    .line 121
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    return-object p0
.end method
