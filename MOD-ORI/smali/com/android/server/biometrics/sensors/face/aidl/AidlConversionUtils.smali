.class public abstract Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static convertAidlToFrameworkFeature(B)I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p0, :cond_2

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    if-eq p0, v0, :cond_1

    .line 6
    .line 7
    if-ne p0, v1, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x3

    .line 10
    return p0

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "Unsupported feature : "

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-string v0, "AidlConversionUtils"

    .line 26
    .line 27
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 31
    .line 32
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 33
    .line 34
    .line 35
    throw p0

    .line 36
    :cond_1
    return v1

    .line 37
    :cond_2
    return v0
.end method

.method public static convertFrameworkToAidlFeature(I)B
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_1

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    if-ne p0, v1, :cond_0

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "Unsupported feature : "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string v0, "AidlConversionUtils"

    .line 23
    .line 24
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 28
    .line 29
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 30
    .line 31
    .line 32
    throw p0

    .line 33
    :cond_1
    const/4 p0, 0x0

    .line 34
    return p0
.end method

.method public static toFrameworkAcquiredInfo(B)I
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const/16 p0, 0x17

    .line 5
    .line 6
    return p0

    .line 7
    :pswitch_0
    const/16 p0, 0x1a

    .line 8
    .line 9
    return p0

    .line 10
    :pswitch_1
    const/16 p0, 0x19

    .line 11
    .line 12
    return p0

    .line 13
    :pswitch_2
    const/16 p0, 0x18

    .line 14
    .line 15
    return p0

    .line 16
    :pswitch_3
    const/16 p0, 0x16

    .line 17
    .line 18
    return p0

    .line 19
    :pswitch_4
    const/16 p0, 0x15

    .line 20
    .line 21
    return p0

    .line 22
    :pswitch_5
    const/16 p0, 0x14

    .line 23
    .line 24
    return p0

    .line 25
    :pswitch_6
    const/16 p0, 0x13

    .line 26
    .line 27
    return p0

    .line 28
    :pswitch_7
    const/16 p0, 0x12

    .line 29
    .line 30
    return p0

    .line 31
    :pswitch_8
    const/16 p0, 0x11

    .line 32
    .line 33
    return p0

    .line 34
    :pswitch_9
    const/16 p0, 0x10

    .line 35
    .line 36
    return p0

    .line 37
    :pswitch_a
    const/16 p0, 0xf

    .line 38
    .line 39
    return p0

    .line 40
    :pswitch_b
    const/16 p0, 0xe

    .line 41
    .line 42
    return p0

    .line 43
    :pswitch_c
    const/16 p0, 0xd

    .line 44
    .line 45
    return p0

    .line 46
    :pswitch_d
    const/16 p0, 0xc

    .line 47
    .line 48
    return p0

    .line 49
    :pswitch_e
    const/16 p0, 0xb

    .line 50
    .line 51
    return p0

    .line 52
    :pswitch_f
    const/16 p0, 0xa

    .line 53
    .line 54
    return p0

    .line 55
    :pswitch_10
    const/16 p0, 0x9

    .line 56
    .line 57
    return p0

    .line 58
    :pswitch_11
    const/16 p0, 0x8

    .line 59
    .line 60
    return p0

    .line 61
    :pswitch_12
    const/4 p0, 0x7

    .line 62
    return p0

    .line 63
    :pswitch_13
    const/4 p0, 0x6

    .line 64
    return p0

    .line 65
    :pswitch_14
    const/4 p0, 0x5

    .line 66
    return p0

    .line 67
    :pswitch_15
    const/4 p0, 0x4

    .line 68
    return p0

    .line 69
    :pswitch_16
    const/4 p0, 0x3

    .line 70
    return p0

    .line 71
    :pswitch_17
    const/4 p0, 0x2

    .line 72
    return p0

    .line 73
    :pswitch_18
    const/4 p0, 0x1

    .line 74
    return p0

    .line 75
    :pswitch_19
    const/4 p0, 0x0

    .line 76
    return p0

    .line 77
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
