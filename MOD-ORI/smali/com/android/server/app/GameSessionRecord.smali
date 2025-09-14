.class public final Lcom/android/server/app/GameSessionRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mIGameSession:Landroid/service/games/IGameSession;

.field public final mRootComponentName:Landroid/content/ComponentName;

.field public final mState:Lcom/android/server/app/GameSessionRecord$State;

.field public final mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

.field public final mTaskId:I


# direct methods
.method public constructor <init>(ILcom/android/server/app/GameSessionRecord$State;Landroid/content/ComponentName;Landroid/service/games/IGameSession;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/app/GameSessionRecord;->mTaskId:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/app/GameSessionRecord;->mState:Lcom/android/server/app/GameSessionRecord$State;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/app/GameSessionRecord;->mRootComponentName:Landroid/content/ComponentName;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/app/GameSessionRecord;->mIGameSession:Landroid/service/games/IGameSession;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/app/GameSessionRecord;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/server/app/GameSessionRecord;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/server/app/GameSessionRecord;

    .line 12
    .line 13
    iget v1, p1, Lcom/android/server/app/GameSessionRecord;->mTaskId:I

    .line 14
    .line 15
    iget v3, p0, Lcom/android/server/app/GameSessionRecord;->mTaskId:I

    .line 16
    .line 17
    if-ne v3, v1, :cond_2

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/app/GameSessionRecord;->mState:Lcom/android/server/app/GameSessionRecord$State;

    .line 20
    .line 21
    iget-object v3, p1, Lcom/android/server/app/GameSessionRecord;->mState:Lcom/android/server/app/GameSessionRecord$State;

    .line 22
    .line 23
    if-ne v1, v3, :cond_2

    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/server/app/GameSessionRecord;->mRootComponentName:Landroid/content/ComponentName;

    .line 26
    .line 27
    iget-object v3, p1, Lcom/android/server/app/GameSessionRecord;->mRootComponentName:Landroid/content/ComponentName;

    .line 28
    .line 29
    invoke-virtual {v1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    iget-object v1, p0, Lcom/android/server/app/GameSessionRecord;->mIGameSession:Landroid/service/games/IGameSession;

    .line 36
    .line 37
    iget-object v3, p1, Lcom/android/server/app/GameSessionRecord;->mIGameSession:Landroid/service/games/IGameSession;

    .line 38
    .line 39
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/app/GameSessionRecord;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/android/server/app/GameSessionRecord;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 48
    .line 49
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    if-eqz p0, :cond_2

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    move v0, v2

    .line 57
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/app/GameSessionRecord;->mTaskId:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v3, p0, Lcom/android/server/app/GameSessionRecord;->mRootComponentName:Landroid/content/ComponentName;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/android/server/app/GameSessionRecord;->mIGameSession:Landroid/service/games/IGameSession;

    .line 10
    .line 11
    iget-object v6, p0, Lcom/android/server/app/GameSessionRecord;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 12
    .line 13
    iget-object v5, p0, Lcom/android/server/app/GameSessionRecord;->mState:Lcom/android/server/app/GameSessionRecord$State;

    .line 14
    .line 15
    move-object v2, v5

    .line 16
    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "GameSessionRecord{mTaskId="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/app/GameSessionRecord;->mTaskId:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", mState="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/app/GameSessionRecord;->mState:Lcom/android/server/app/GameSessionRecord$State;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", mRootComponentName="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/app/GameSessionRecord;->mRootComponentName:Landroid/content/ComponentName;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", mIGameSession="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/server/app/GameSessionRecord;->mIGameSession:Landroid/service/games/IGameSession;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", mSurfacePackage="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/app/GameSessionRecord;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 49
    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const/16 p0, 0x7d

    .line 54
    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method
