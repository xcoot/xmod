.class public final Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mGameServiceComponentName:Landroid/content/ComponentName;

.field public final mGameSessionServiceComponentName:Landroid/content/ComponentName;

.field public final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/os/UserHandle;Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;->mUserHandle:Landroid/os/UserHandle;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;->mGameServiceComponentName:Landroid/content/ComponentName;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;->mGameSessionServiceComponentName:Landroid/content/ComponentName;

    .line 12
    .line 13
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
    instance-of v1, p1, Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;

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
    check-cast p1, Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;->mUserHandle:Landroid/os/UserHandle;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;->mUserHandle:Landroid/os/UserHandle;

    .line 16
    .line 17
    invoke-virtual {v1, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;->mGameServiceComponentName:Landroid/content/ComponentName;

    .line 24
    .line 25
    iget-object v3, p1, Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;->mGameServiceComponentName:Landroid/content/ComponentName;

    .line 26
    .line 27
    invoke-virtual {v1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;->mGameSessionServiceComponentName:Landroid/content/ComponentName;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;->mGameSessionServiceComponentName:Landroid/content/ComponentName;

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    move v0, v2

    .line 45
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;->mUserHandle:Landroid/os/UserHandle;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;->mGameServiceComponentName:Landroid/content/ComponentName;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;->mGameSessionServiceComponentName:Landroid/content/ComponentName;

    .line 6
    .line 7
    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "GameServiceComponentConfiguration{userHandle="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;->mUserHandle:Landroid/os/UserHandle;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", gameServiceComponentName="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;->mGameServiceComponentName:Landroid/content/ComponentName;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", gameSessionServiceComponentName="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;->mGameSessionServiceComponentName:Landroid/content/ComponentName;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string/jumbo p0, "}"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method
