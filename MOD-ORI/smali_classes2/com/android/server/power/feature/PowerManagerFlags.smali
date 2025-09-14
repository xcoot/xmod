.class public final Lcom/android/server/power/feature/PowerManagerFlags;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mEarlyScreenTimeoutDetectorFlagState:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

.field public final mImproveWakelockLatency:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    .line 5
    .line 6
    new-instance v1, Lcom/android/server/power/feature/PowerManagerFlags$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, v2}, Lcom/android/server/power/feature/PowerManagerFlags$$ExternalSyntheticLambda0;-><init>(I)V

    .line 10
    .line 11
    .line 12
    const-string v2, "com.android.server.power.feature.flags.enable_early_screen_timeout_detector"

    .line 13
    .line 14
    invoke-direct {v0, v2, v1}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mEarlyScreenTimeoutDetectorFlagState:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    .line 18
    .line 19
    new-instance v0, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    .line 20
    .line 21
    new-instance v1, Lcom/android/server/power/feature/PowerManagerFlags$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-direct {v1, v2}, Lcom/android/server/power/feature/PowerManagerFlags$$ExternalSyntheticLambda0;-><init>(I)V

    .line 25
    .line 26
    .line 27
    const-string v2, "com.android.server.power.feature.flags.improve_wakelock_latency"

    .line 28
    .line 29
    invoke-direct {v0, v2, v1}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mImproveWakelockLatency:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    const-string v0, "PowerManagerFlags:"

    .line 2
    .line 3
    const-string v1, " "

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v2, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mEarlyScreenTimeoutDetectorFlagState:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mImproveWakelockLatency:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    .line 27
    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
