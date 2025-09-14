.class public final Lcom/android/server/app/GameTaskInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mComponentName:Landroid/content/ComponentName;

.field public final mIsGameTask:Z

.field public final mTaskId:I


# direct methods
.method public constructor <init>(ILandroid/content/ComponentName;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/app/GameTaskInfo;->mTaskId:I

    .line 6
    iput-boolean p3, p0, Lcom/android/server/app/GameTaskInfo;->mIsGameTask:Z

    .line 8
    iput-object p2, p0, Lcom/android/server/app/GameTaskInfo;->mComponentName:Landroid/content/ComponentName;

    .line 10
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/server/app/GameTaskInfo;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/server/app/GameTaskInfo;

    .line 13
    iget v1, p1, Lcom/android/server/app/GameTaskInfo;->mTaskId:I

    .line 15
    iget v3, p0, Lcom/android/server/app/GameTaskInfo;->mTaskId:I

    .line 17
    if-ne v3, v1, :cond_2

    .line 19
    iget-boolean v1, p0, Lcom/android/server/app/GameTaskInfo;->mIsGameTask:Z

    .line 21
    iget-boolean v3, p1, Lcom/android/server/app/GameTaskInfo;->mIsGameTask:Z

    .line 23
    if-ne v1, v3, :cond_2

    .line 25
    iget-object p0, p0, Lcom/android/server/app/GameTaskInfo;->mComponentName:Landroid/content/ComponentName;

    .line 27
    iget-object p1, p1, Lcom/android/server/app/GameTaskInfo;->mComponentName:Landroid/content/ComponentName;

    .line 29
    invoke-virtual {p0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_2

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    move v0, v2

    .line 37
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/app/GameTaskInfo;->mTaskId:I

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Lcom/android/server/app/GameTaskInfo;->mIsGameTask:Z

    .line 9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    move-result-object v1

    .line 13
    iget-object p0, p0, Lcom/android/server/app/GameTaskInfo;->mComponentName:Landroid/content/ComponentName;

    .line 15
    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "GameTaskInfo{mTaskId="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget v1, p0, Lcom/android/server/app/GameTaskInfo;->mTaskId:I

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ", mIsGameTask="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-boolean v1, p0, Lcom/android/server/app/GameTaskInfo;->mIsGameTask:Z

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, ", mComponentName="

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget-object p0, p0, Lcom/android/server/app/GameTaskInfo;->mComponentName:Landroid/content/ComponentName;

    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    const/16 p0, 0x7d

    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method
