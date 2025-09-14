.class public final synthetic Lcom/android/server/display/mode/RefreshRateModeManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/display/mode/RefreshRateModeManager$$ExternalSyntheticLambda1;->f$0:Ljava/io/PrintWriter;

    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/display/mode/RefreshRateModeManager$$ExternalSyntheticLambda1;->f$0:Ljava/io/PrintWriter;

    .line 3
    check-cast p1, Landroid/os/IBinder;

    .line 5
    check-cast p2, Lcom/android/server/display/mode/RefreshRateController;

    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    .line 12
    const-string v0, "      DisplayToken: "

    .line 14
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    iget-object v0, p2, Lcom/android/server/display/mode/RefreshRateController;->mDisplayToken:Landroid/os/IBinder;

    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 29
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FOR_SUB_DISPLAY:Z

    .line 31
    iget-boolean v0, p2, Lcom/android/server/display/mode/RefreshRateController;->mIsSubScreen:Z

    .line 33
    if-eqz p1, :cond_0

    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    .line 37
    const-string v1, "        PrimaryDisplay: "

    .line 39
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    xor-int/lit8 v1, v0, 0x1

    .line 44
    invoke-static {p1, v1, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 47
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/display/mode/RefreshRateController;->getControllerType()Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    const-string v1, "        ControllerType: "

    .line 53
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 60
    new-instance p1, Ljava/lang/StringBuilder;

    .line 62
    const-string v1, "        RefreshRateMode: "

    .line 64
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    iget-object v1, p2, Lcom/android/server/display/mode/RefreshRateController;->mRefreshRateMode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 69
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 72
    move-result v1

    .line 73
    invoke-static {v1}, Landroid/provider/Settings$Secure;->refreshRateModeToString(I)Ljava/lang/String;

    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    new-instance p1, Ljava/lang/StringBuilder;

    .line 89
    const-string v1, "        ReportedRefreshRateMode: "

    .line 91
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    iget-object v1, p2, Lcom/android/server/display/mode/RefreshRateController;->mReportedRefreshRateMode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 96
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 99
    move-result v1

    .line 100
    invoke-static {v1}, Landroid/provider/Settings$Secure;->refreshRateModeToString(I)Ljava/lang/String;

    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    iget-object p1, p2, Lcom/android/server/display/mode/RefreshRateController;->mDisplayToken:Landroid/os/IBinder;

    .line 116
    if-eqz p1, :cond_1

    .line 118
    const-string p1, "        "

    .line 120
    invoke-static {p0, p1, v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 123
    :cond_1
    return-void
.end method
