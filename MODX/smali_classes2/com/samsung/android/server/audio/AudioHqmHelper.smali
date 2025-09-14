.class public abstract Lcom/samsung/android/server/audio/AudioHqmHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final BIG_DATA:[[Ljava/lang/String;

.field public static mAudioServerResetCount:I = 0x0

.field public static mAudioServerResetCountMaxLimit:Z = false

.field public static mPreAudioServerResetCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 1
    const-string v8, "HW_CUST"

    .line 2
    .line 3
    const-string v9, "HW_CUSC"

    .line 4
    .line 5
    const-string v0, "HW_CSPT"

    .line 6
    .line 7
    const-string v1, "HW_CSPC"

    .line 8
    .line 9
    const-string v2, "HW_CRET"

    .line 10
    .line 11
    const-string v3, "HW_CREC"

    .line 12
    .line 13
    const-string v4, "HW_CEAT"

    .line 14
    .line 15
    const-string v5, "HW_CEAC"

    .line 16
    .line 17
    const-string v6, "HW_CBTT"

    .line 18
    .line 19
    const-string v7, "HW_CBTC"

    .line 20
    .line 21
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v15, "MU_MEVL"

    .line 26
    .line 27
    const-string v16, "MU_MUHV"

    .line 28
    .line 29
    const-string v1, "HW_MSPT"

    .line 30
    .line 31
    const-string v2, "HW_MSPC"

    .line 32
    .line 33
    const-string v3, "HW_MEAT"

    .line 34
    .line 35
    const-string v4, "HW_MEAC"

    .line 36
    .line 37
    const-string v5, "HW_MBTT"

    .line 38
    .line 39
    const-string v6, "HW_MBTC"

    .line 40
    .line 41
    const-string v7, "HW_MUST"

    .line 42
    .line 43
    const-string v8, "HW_MUSC"

    .line 44
    .line 45
    const-string v9, "HW_MUHT"

    .line 46
    .line 47
    const-string v10, "HW_MUHC"

    .line 48
    .line 49
    const-string v11, "HW_DLBY"

    .line 50
    .line 51
    const-string v12, "HW_3EJC"

    .line 52
    .line 53
    const-string v13, "HW_4EJC"

    .line 54
    .line 55
    const-string v14, "MU_MSVL"

    .line 56
    .line 57
    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const-string v2, "FW_VSMC"

    .line 62
    .line 63
    filled-new-array {v2}, [Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    const-string v9, "RCV_EXCU_OVERCNT"

    .line 68
    .line 69
    const-string v10, "SPK_EXCU_OVERCNT"

    .line 70
    .line 71
    const-string v3, "RCV_TEMP_MAX"

    .line 72
    .line 73
    const-string v4, "SPK_TEMP_MAX"

    .line 74
    .line 75
    const-string v5, "RCV_TEMP_OVERCNT"

    .line 76
    .line 77
    const-string v6, "SPK_TEMP_OVERCNT"

    .line 78
    .line 79
    const-string v7, "RCV_EXCU_MAX"

    .line 80
    .line 81
    const-string v8, "SPK_EXCU_MAX"

    .line 82
    .line 83
    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    filled-new-array {v0, v1, v2, v3}, [[Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    sput-object v0, Lcom/samsung/android/server/audio/AudioHqmHelper;->BIG_DATA:[[Ljava/lang/String;

    .line 92
    .line 93
    return-void
.end method

.method public static sendHqmData(Landroid/content/Context;Z)V
    .locals 11

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, "l_bigdata_logging;l_bigdata_app"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v0, "l_bigdata_logging"

    .line 7
    .line 8
    :goto_0
    new-instance v1, Lcom/samsung/android/media/AudioParameter;

    .line 9
    .line 10
    invoke-static {v0}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-direct {v1, v0}, Lcom/samsung/android/media/AudioParameter;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    move v2, v0

    .line 19
    :goto_1
    const/4 v3, 0x4

    .line 20
    const-string v4, "FWAC"

    .line 21
    .line 22
    if-ge v2, v3, :cond_5

    .line 23
    .line 24
    new-instance v3, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    new-instance v5, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    sget-object v6, Lcom/samsung/android/server/audio/AudioHqmHelper;->BIG_DATA:[[Ljava/lang/String;

    .line 35
    .line 36
    aget-object v6, v6, v2

    .line 37
    .line 38
    array-length v7, v6

    .line 39
    move v8, v0

    .line 40
    :goto_2
    if-ge v8, v7, :cond_2

    .line 41
    .line 42
    aget-object v9, v6, v8

    .line 43
    .line 44
    invoke-virtual {v1, v9}, Lcom/samsung/android/media/AudioParameter;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v10

    .line 48
    if-eqz v10, :cond_1

    .line 49
    .line 50
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-nez v6, :cond_3

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_3
    const/4 v6, 0x3

    .line 67
    if-ne v2, v6, :cond_4

    .line 68
    .line 69
    const-string v4, "AUDI"

    .line 70
    .line 71
    :cond_4
    invoke-static {p0, v3, v5, v4}, Lcom/samsung/android/server/audio/AudioHqmHelper;->sendLoggingDataToHQM(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .line 81
    .line 82
    new-instance v1, Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .line 86
    .line 87
    sget v2, Lcom/samsung/android/server/audio/AudioHqmHelper;->mAudioServerResetCount:I

    .line 88
    .line 89
    sget v3, Lcom/samsung/android/server/audio/AudioHqmHelper;->mPreAudioServerResetCount:I

    .line 90
    .line 91
    sub-int v3, v2, v3

    .line 92
    .line 93
    if-nez p1, :cond_6

    .line 94
    .line 95
    sput v2, Lcom/samsung/android/server/audio/AudioHqmHelper;->mPreAudioServerResetCount:I

    .line 96
    .line 97
    :cond_6
    const-string p1, "FW_ASRC"

    .line 98
    .line 99
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    invoke-static {p0, v0, v1, v4}, Lcom/samsung/android/server/audio/AudioHqmHelper;->sendLoggingDataToHQM(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method public static sendLoggingDataToHQM(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 6
    .line 7
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    goto :goto_2

    .line 36
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 37
    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    :goto_2
    if-nez p1, :cond_1

    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    const-string p2, "\\{"

    .line 44
    .line 45
    const-string v0, ""

    .line 46
    .line 47
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string p2, "\\}"

    .line 52
    .line 53
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    const-string p1, "HqmManagerService"

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    move-object v1, p0

    .line 64
    check-cast v1, Landroid/os/SemHqmManager;

    .line 65
    .line 66
    const-string p0, "AS.AudioHqmHelper"

    .line 67
    .line 68
    const-string/jumbo p1, "sendLoggingDataToHQM() Server update !!!"

    .line 69
    .line 70
    .line 71
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    const-string v6, "0.0"

    .line 75
    .line 76
    const-string/jumbo v7, "sec"

    .line 77
    .line 78
    .line 79
    const/4 v2, 0x0

    .line 80
    const-string v3, "Audio"

    .line 81
    .line 82
    const-string/jumbo v5, "sm"

    .line 83
    .line 84
    .line 85
    const-string v8, ""

    .line 86
    .line 87
    const-string v10, ""

    .line 88
    .line 89
    move-object v4, p3

    .line 90
    invoke-virtual/range {v1 .. v10}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    return-void
.end method
