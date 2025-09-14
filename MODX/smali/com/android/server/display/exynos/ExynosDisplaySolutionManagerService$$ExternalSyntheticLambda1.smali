.class public final synthetic Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    iput p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;->f$0:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method private final accept$com$android$server$display$exynos$ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda14(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;->f$0:I

    .line 3
    check-cast p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;

    .line 5
    const-string/jumbo v0, "setWhitePointColorSettingOn(): onoff = "

    .line 8
    iget-object v1, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mLock:Ljava/lang/Object;

    .line 10
    monitor-enter v1

    .line 11
    :try_start_0
    const-string v2, "ExynosDisplaySolutionManagerServiceImpl"

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object p1, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

    .line 30
    invoke-virtual {p1, p0}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setWhitePointColorOn(I)V

    .line 33
    monitor-exit v1

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0
.end method

.method private final accept$com$android$server$display$exynos$ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda2(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;->f$0:I

    .line 3
    check-cast p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;

    .line 5
    const-string/jumbo v0, "setEyeTempSettingOn(): onoff = "

    .line 8
    iget-object v1, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mLock:Ljava/lang/Object;

    .line 10
    monitor-enter v1

    .line 11
    :try_start_0
    const-string v2, "ExynosDisplaySolutionManagerServiceImpl"

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object p1, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    if-eqz p0, :cond_0

    .line 35
    :try_start_1
    iget-object p0, p1, Lcom/android/server/display/exynos/ExynosDisplayColor;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    .line 37
    const-string/jumbo v0, "calib_data_eyetemp.xml"

    .line 40
    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 44
    const-string/jumbo v0, "eyetemp"

    .line 47
    const-string/jumbo v2, "gamma"

    .line 50
    invoke-static {p0, v0, v2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 53
    move-result-object p0

    .line 54
    iput-object p0, p1, Lcom/android/server/display/exynos/ExynosDisplayColor;->eyetemp_array:[Ljava/lang/String;

    .line 56
    goto :goto_1

    .line 57
    :catch_0
    move-exception p0

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const/4 p0, 0x0

    .line 60
    iput-object p0, p1, Lcom/android/server/display/exynos/ExynosDisplayColor;->eyetemp_array:[Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setGammaBypass()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    goto :goto_1

    .line 66
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 69
    :goto_1
    monitor-exit v1

    .line 70
    return-void

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    throw p0
.end method

.method private final accept$com$android$server$display$exynos$ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda4(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;->f$0:I

    .line 3
    check-cast p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;

    .line 5
    const-string/jumbo v0, "setRgbWeightSettingOn(): onoff = "

    .line 8
    iget-object v1, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mLock:Ljava/lang/Object;

    .line 10
    monitor-enter v1

    .line 11
    :try_start_0
    const-string v2, "ExynosDisplaySolutionManagerServiceImpl"

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object p1, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

    .line 30
    invoke-virtual {p1, p0}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setRgbWeightOn(I)V

    .line 33
    monitor-exit v1

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0
.end method

.method private final accept$com$android$server$display$exynos$ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda5(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;->f$0:I

    .line 3
    check-cast p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;

    .line 5
    const-string/jumbo v0, "setHsvGainSettingOn(): onoff = "

    .line 8
    iget-object v1, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mLock:Ljava/lang/Object;

    .line 10
    monitor-enter v1

    .line 11
    :try_start_0
    const-string v2, "ExynosDisplaySolutionManagerServiceImpl"

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 25
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object p0, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

    .line 30
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setHsvGainOn()V

    .line 33
    monitor-exit v1

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0
.end method

.method private final accept$com$android$server$display$exynos$ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda6(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;->f$0:I

    .line 3
    check-cast p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;

    .line 5
    const-string/jumbo v0, "setEdgeSharpnessSettingValue(): value="

    .line 8
    iget-object v1, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mLock:Ljava/lang/Object;

    .line 10
    monitor-enter v1

    .line 11
    :try_start_0
    const-string v2, "ExynosDisplaySolutionManagerServiceImpl"

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object p1, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :try_start_1
    iget-object v0, p1, Lcom/android/server/display/exynos/ExynosDisplayColor;->sharpness_array:[Ljava/lang/String;

    .line 35
    if-eqz v0, :cond_2

    .line 37
    array-length v2, v0

    .line 38
    if-nez v2, :cond_0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    array-length v2, v0

    .line 42
    if-lt p0, v2, :cond_1

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    aget-object p0, v0, p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception p0

    .line 49
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 52
    const/4 p0, 0x0

    .line 53
    :goto_0
    if-eqz p0, :cond_2

    .line 55
    const-string v0, "ExynosDisplayColor"

    .line 57
    const-string/jumbo v2, "setEdgeSharpnessValue()"

    .line 60
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p1, Lcom/android/server/display/exynos/ExynosDisplayColor;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    .line 65
    const-string/jumbo v2, "de"

    .line 68
    invoke-virtual {v0, v2}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 72
    iget-object p1, p1, Lcom/android/server/display/exynos/ExynosDisplayColor;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 80
    move-result-object p0

    .line 81
    invoke-static {v0, p0}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;[B)Z

    .line 84
    :cond_2
    :goto_1
    monitor-exit v1

    .line 85
    return-void

    .line 86
    :catchall_0
    move-exception p0

    .line 87
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    throw p0
.end method

.method private final accept$com$android$server$display$exynos$ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda7(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;->f$0:I

    .line 3
    check-cast p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;

    .line 5
    const-string/jumbo v0, "setSkinColorSettingOn(): onoff = "

    .line 8
    iget-object v1, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mLock:Ljava/lang/Object;

    .line 10
    monitor-enter v1

    .line 11
    :try_start_0
    const-string v2, "ExynosDisplaySolutionManagerServiceImpl"

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object p1, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

    .line 30
    invoke-virtual {p1, p0}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setSkinColorOn(I)V

    .line 33
    monitor-exit v1

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0
.end method

.method private final accept$com$android$server$display$exynos$ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda8(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;->f$0:I

    .line 3
    check-cast p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;

    .line 5
    const-string/jumbo v0, "setEyeTempSettingValue(): value = "

    .line 8
    iget-object v1, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mLock:Ljava/lang/Object;

    .line 10
    monitor-enter v1

    .line 11
    :try_start_0
    const-string v2, "ExynosDisplaySolutionManagerServiceImpl"

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object p1, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :try_start_1
    iget-object v0, p1, Lcom/android/server/display/exynos/ExynosDisplayColor;->eyetemp_array:[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    if-eqz v0, :cond_2

    .line 37
    :try_start_2
    array-length v2, v0

    .line 38
    if-nez v2, :cond_0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    array-length v2, v0

    .line 42
    if-lt p0, v2, :cond_1

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    aget-object p0, v0, p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception p0

    .line 49
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 52
    const/4 p0, 0x0

    .line 53
    :goto_0
    if-eqz p0, :cond_2

    .line 55
    const-string v0, "ExynosDisplayColor"

    .line 57
    const-string/jumbo v2, "setGammaValue()"

    .line 60
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p1, Lcom/android/server/display/exynos/ExynosDisplayColor;->EXTENSION_OFF:Ljava/lang/String;

    .line 65
    invoke-virtual {p1, p0, v0}, Lcom/android/server/display/exynos/ExynosDisplayColor;->sysfsWriteGamma(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 68
    goto :goto_1

    .line 69
    :catch_1
    move-exception p0

    .line 70
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 73
    :cond_2
    :goto_1
    monitor-exit v1

    .line 74
    return-void

    .line 75
    :catchall_0
    move-exception p0

    .line 76
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 77
    throw p0
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;->f$0:I

    .line 8
    check-cast p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;

    .line 10
    const-string/jumbo v0, "setRgbGainSettingOn(): onoff = "

    .line 13
    iget-object v1, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mLock:Ljava/lang/Object;

    .line 15
    monitor-enter v1

    .line 16
    :try_start_0
    const-string v2, "ExynosDisplaySolutionManagerServiceImpl"

    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object p1, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

    .line 35
    invoke-virtual {p1, p0}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setRgbGainOn(I)V

    .line 38
    monitor-exit v1

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw p0

    .line 43
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;->accept$com$android$server$display$exynos$ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda8(Ljava/lang/Object;)V

    .line 46
    return-void

    .line 47
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;->accept$com$android$server$display$exynos$ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda7(Ljava/lang/Object;)V

    .line 50
    return-void

    .line 51
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;->accept$com$android$server$display$exynos$ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda6(Ljava/lang/Object;)V

    .line 54
    return-void

    .line 55
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;->accept$com$android$server$display$exynos$ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda5(Ljava/lang/Object;)V

    .line 58
    return-void

    .line 59
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;->accept$com$android$server$display$exynos$ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda4(Ljava/lang/Object;)V

    .line 62
    return-void

    .line 63
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;->accept$com$android$server$display$exynos$ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda2(Ljava/lang/Object;)V

    .line 66
    return-void

    .line 67
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;->accept$com$android$server$display$exynos$ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda14(Ljava/lang/Object;)V

    .line 70
    return-void

    .line 71
    :pswitch_7
    iget p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;->f$0:I

    .line 73
    check-cast p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;

    .line 75
    const-string/jumbo v0, "setColorEnhancementSettingValue(): value = "

    .line 78
    iget-object v1, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mLock:Ljava/lang/Object;

    .line 80
    monitor-enter v1

    .line 81
    :try_start_1
    const-string v2, "ExynosDisplaySolutionManagerServiceImpl"

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    .line 85
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object v0

    .line 95
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object p1, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

    .line 100
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 103
    const/4 v0, 0x1

    .line 104
    if-eq p0, v0, :cond_2

    .line 106
    const/4 v0, 0x2

    .line 107
    if-eq p0, v0, :cond_1

    .line 109
    const/4 v0, 0x3

    .line 110
    if-eq p0, v0, :cond_0

    .line 112
    :try_start_2
    const-string/jumbo p0, "bypass"

    .line 115
    goto :goto_0

    .line 116
    :catch_0
    move-exception p0

    .line 117
    goto :goto_1

    .line 118
    :cond_0
    const-string p0, "SRGB"

    .line 120
    goto :goto_0

    .line 121
    :cond_1
    const-string p0, "DISPLAY_P3"

    .line 123
    goto :goto_0

    .line 124
    :cond_2
    const-string p0, "NATIVE"

    .line 126
    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setXMLColorModesImpl(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 129
    goto :goto_2

    .line 130
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 133
    :goto_2
    monitor-exit v1

    .line 134
    return-void

    .line 135
    :catchall_1
    move-exception p0

    .line 136
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 137
    throw p0

    .line 138
    :pswitch_8
    iget p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;->f$0:I

    .line 140
    check-cast p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;

    .line 142
    const-string/jumbo v0, "setEdgeSharpnessSettingOn(): onoff = "

    .line 145
    iget-object v1, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mLock:Ljava/lang/Object;

    .line 147
    monitor-enter v1

    .line 148
    :try_start_4
    const-string v2, "ExynosDisplaySolutionManagerServiceImpl"

    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    .line 152
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    move-result-object v0

    .line 162
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object p1, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

    .line 167
    invoke-virtual {p1, p0}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setEdgeSharpnessOn(I)V

    .line 170
    monitor-exit v1

    .line 171
    return-void

    .line 172
    :catchall_2
    move-exception p0

    .line 173
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 174
    throw p0

    .line 175
    :pswitch_9
    iget p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;->f$0:I

    .line 177
    check-cast p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;

    .line 179
    const-string/jumbo v0, "setColorTempSettingOn(): onoff = "

    .line 182
    iget-object v1, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mLock:Ljava/lang/Object;

    .line 184
    monitor-enter v1

    .line 185
    :try_start_5
    const-string v2, "ExynosDisplaySolutionManagerServiceImpl"

    .line 187
    new-instance v3, Ljava/lang/StringBuilder;

    .line 189
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    move-result-object v0

    .line 199
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object p1, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

    .line 204
    invoke-virtual {p1, p0}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setColorTempOn(I)V

    .line 207
    monitor-exit v1

    .line 208
    return-void

    .line 209
    :catchall_3
    move-exception p0

    .line 210
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 211
    throw p0

    .line 212
    nop

    .line 213
    :pswitch_data_0
    .packed-switch 0x0
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
