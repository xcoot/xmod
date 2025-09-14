.class public abstract Lcom/samsung/android/server/dynamicfeature/InfoBoard;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static TERM_HANDLING_FEATURE:J = 0x0L

.field public static TERM_HANDLING_TEST_FEATURE:I = 0x0

.field public static final basicInfo:Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;

.field public static final paramInfo:Lcom/samsung/android/server/dynamicfeature/InfoBoard$ParamInfos;

.field public static sDirty:Z = false

.field public static sExecutableBinaryType:Ljava/lang/String; = "B"

.field public static sParamDirty:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    iput-object v1, v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;->vid:Ljava/lang/String;

    .line 9
    .line 10
    const-wide/16 v2, 0xb4

    .line 11
    .line 12
    iput-wide v2, v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;->jobIntervalMin:J

    .line 13
    .line 14
    const/4 v2, 0x5

    .line 15
    iput v2, v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;->flexMill:I

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    iput-boolean v2, v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;->isUT:Z

    .line 19
    .line 20
    iput-object v1, v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;->lastUpdatedTime:Ljava/lang/String;

    .line 21
    .line 22
    sput-object v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->basicInfo:Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;

    .line 23
    .line 24
    new-instance v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard$ParamInfos;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v1, v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard$ParamInfos;->mcc:Ljava/lang/String;

    .line 30
    .line 31
    iput-object v1, v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard$ParamInfos;->mnc:Ljava/lang/String;

    .line 32
    .line 33
    iput-object v1, v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard$ParamInfos;->csc:Ljava/lang/String;

    .line 34
    .line 35
    iput v2, v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard$ParamInfos;->sdkVersion:I

    .line 36
    .line 37
    iput-object v1, v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard$ParamInfos;->oneUiVersion:Ljava/lang/String;

    .line 38
    .line 39
    const-string v1, "C"

    .line 40
    .line 41
    iput-object v1, v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard$ParamInfos;->binaryType:Ljava/lang/String;

    .line 42
    .line 43
    sput-object v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->paramInfo:Lcom/samsung/android/server/dynamicfeature/InfoBoard$ParamInfos;

    .line 44
    .line 45
    sput-boolean v2, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->sDirty:Z

    .line 46
    .line 47
    sput-boolean v2, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->sParamDirty:Z

    .line 48
    .line 49
    const-wide/16 v0, 0x2710

    .line 50
    .line 51
    sput-wide v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->TERM_HANDLING_FEATURE:J

    .line 52
    .line 53
    const/4 v0, 0x1

    .line 54
    sput v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->TERM_HANDLING_TEST_FEATURE:I

    .line 55
    .line 56
    return-void
.end method

.method public static getProperty()Ljava/lang/String;
    .locals 8

    .line 1
    const-string/jumbo v0, "ro.build.version.sep"

    .line 2
    .line 3
    .line 4
    const-string v1, ""

    .line 5
    .line 6
    const-string v2, "IllegalArgumentException e: "

    .line 7
    .line 8
    const-string v3, "dynamicfeature_InfoBoard"

    .line 9
    .line 10
    :try_start_0
    const-string v4, "android.os.SystemProperties"

    .line 11
    .line 12
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    const/4 v5, 0x1

    .line 17
    new-array v5, v5, [Ljava/lang/Class;

    .line 18
    .line 19
    const-class v6, Ljava/lang/String;

    .line 20
    .line 21
    const/4 v7, 0x0

    .line 22
    aput-object v6, v5, v7

    .line 23
    .line 24
    const-string v6, "get"

    .line 25
    .line 26
    invoke-virtual {v4, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v5, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Ljava/lang/String;

    .line 39
    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    if-nez v2, :cond_0

    .line 47
    .line 48
    move-object v1, v0

    .line 49
    goto :goto_2

    .line 50
    :catch_0
    move-exception v0

    .line 51
    goto :goto_0

    .line 52
    :catch_1
    move-exception v0

    .line 53
    goto :goto_1

    .line 54
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 55
    .line 56
    .line 57
    new-instance v4, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :goto_1
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 78
    .line 79
    .line 80
    new-instance v4, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    :cond_0
    :goto_2
    return-object v1
.end method

.method public static getStartMilFromNow()J
    .locals 4

    .line 1
    const-string v0, "UNKNOWN"

    .line 2
    .line 3
    const-string/jumbo v1, "ro.product_ship"

    .line 4
    .line 5
    .line 6
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string/jumbo v1, "true"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const-wide/16 v0, 0x0

    .line 20
    .line 21
    return-wide v0

    .line 22
    :cond_0
    new-instance v0, Ljava/util/Random;

    .line 23
    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 29
    .line 30
    .line 31
    const v1, 0x15180

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    int-to-long v0, v0

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v3, "Update service will start after : "

    .line 42
    .line 43
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const-string v3, "dynamicfeature_InfoBoard"

    .line 54
    .line 55
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    const-wide/16 v2, 0x3e8

    .line 59
    .line 60
    mul-long/2addr v0, v2

    .line 61
    return-wide v0
.end method

.method public static isBetaBinaryType()Z
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->sExecutableBinaryType:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "A"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    add-int/lit8 v2, v2, -0x4

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    add-int/lit8 v3, v3, -0x3

    .line 26
    .line 27
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const-string v3, "Z"

    .line 32
    .line 33
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const-string v3, "C"

    .line 41
    .line 42
    :goto_0
    sget-object v2, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->sExecutableBinaryType:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v3, "This is Beta Binary : "

    .line 53
    .line 54
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    add-int/lit8 v3, v3, -0x4

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    add-int/lit8 v4, v4, -0x3

    .line 68
    .line 69
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    const-string v2, "dynamicfeature_InfoBoard"

    .line 81
    .line 82
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    return v1

    .line 86
    :cond_2
    const/4 v0, 0x0

    .line 87
    return v0
.end method

.method public static removeProperty(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "IllegalArgumentException e: "

    .line 2
    .line 3
    const-string v1, "dynamicfeature_InfoBoard"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    invoke-static {p0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_1
    move-exception p0

    .line 35
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 36
    .line 37
    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    :goto_0
    return-void
.end method

.method public static setParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->paramInfo:Lcom/samsung/android/server/dynamicfeature/InfoBoard$ParamInfos;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard$ParamInfos;->mcc:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    sput-boolean v2, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->sParamDirty:Z

    .line 13
    .line 14
    iput-object p0, v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard$ParamInfos;->mcc:Ljava/lang/String;

    .line 15
    .line 16
    :cond_0
    iget-object p0, v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard$ParamInfos;->mnc:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-nez p0, :cond_1

    .line 23
    .line 24
    sput-boolean v2, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->sParamDirty:Z

    .line 25
    .line 26
    iput-object p1, v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard$ParamInfos;->mnc:Ljava/lang/String;

    .line 27
    .line 28
    :cond_1
    iget-object p0, v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard$ParamInfos;->csc:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-nez p0, :cond_2

    .line 35
    .line 36
    sput-boolean v2, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->sParamDirty:Z

    .line 37
    .line 38
    iput-object p2, v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard$ParamInfos;->csc:Ljava/lang/String;

    .line 39
    .line 40
    :cond_2
    iget p0, v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard$ParamInfos;->sdkVersion:I

    .line 41
    .line 42
    if-eq p0, p5, :cond_3

    .line 43
    .line 44
    sput-boolean v2, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->sParamDirty:Z

    .line 45
    .line 46
    iput p5, v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard$ParamInfos;->sdkVersion:I

    .line 47
    .line 48
    :cond_3
    iget-object p0, v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard$ParamInfos;->oneUiVersion:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-nez p0, :cond_4

    .line 55
    .line 56
    sput-boolean v2, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->sParamDirty:Z

    .line 57
    .line 58
    iput-object p3, v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard$ParamInfos;->oneUiVersion:Ljava/lang/String;

    .line 59
    .line 60
    :cond_4
    iget-object p0, v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard$ParamInfos;->binaryType:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    if-nez p0, :cond_5

    .line 67
    .line 68
    sput-boolean v2, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->sParamDirty:Z

    .line 69
    .line 70
    iput-object p4, v0, Lcom/samsung/android/server/dynamicfeature/InfoBoard$ParamInfos;->binaryType:Ljava/lang/String;

    .line 71
    .line 72
    :cond_5
    return-void
.end method
