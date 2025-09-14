.class public final Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;


# instance fields
.field public mBrightnessToFollow:F

.field public mBrightnessToFollowSlowChange:Z

.field public final mDisplayId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;->mDisplayId:I

    .line 5
    .line 6
    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 7
    .line 8
    iput p1, p0, Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;->mBrightnessToFollow:F

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;->mBrightnessToFollowSlowChange:Z

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    const-string v0, "FollowerBrightnessStrategy:"

    .line 2
    .line 3
    const-string v1, "  mDisplayId="

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;->mDisplayId:I

    .line 10
    .line 11
    const-string v2, "  mBrightnessToFollow:"

    .line 12
    .line 13
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget v1, p0, Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;->mBrightnessToFollow:F

    .line 18
    .line 19
    const-string v2, "  mBrightnessToFollowSlowChange:"

    .line 20
    .line 21
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;->mBrightnessToFollowSlowChange:Z

    .line 26
    .line 27
    invoke-static {v0, p0, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "FollowerBrightnessStrategy"

    .line 2
    .line 3
    return-object p0
.end method

.method public final getReason()I
    .locals 0

    .line 1
    const/16 p0, 0xa

    .line 2
    .line 3
    return p0
.end method

.method public final strategySelectionPostProcessor(Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final updateBrightness(Lcom/android/server/display/brightness/StrategyExecutionRequest;)Lcom/android/server/display/DisplayBrightnessState;
    .locals 2

    .line 1
    iget p1, p0, Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;->mBrightnessToFollow:F

    .line 2
    .line 3
    const-string v0, "FollowerBrightnessStrategy"

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;->mBrightnessToFollowSlowChange:Z

    .line 6
    .line 7
    const/16 v1, 0xa

    .line 8
    .line 9
    invoke-static {v1, p1, p1, v0, p0}, Lcom/android/server/display/brightness/BrightnessUtils;->constructDisplayBrightnessState(IFFLjava/lang/String;Z)Lcom/android/server/display/DisplayBrightnessState;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method
