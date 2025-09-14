.class public final Lcom/android/server/SystemService$TargetUser;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->SYSTEM_SERVER:Landroid/annotation/SystemApi$Client;
.end annotation


# instance fields
.field public final mFull:Z

.field public final mPreCreated:Z

.field public final mProfile:Z

.field public final mUserId:I

.field public final mUserType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/pm/UserInfo;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    .line 5
    .line 6
    iput v0, p0, Lcom/android/server/SystemService$TargetUser;->mUserId:I

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isFull()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput-boolean v0, p0, Lcom/android/server/SystemService$TargetUser;->mFull:Z

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isProfile()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iput-boolean v0, p0, Lcom/android/server/SystemService$TargetUser;->mProfile:Z

    .line 19
    .line 20
    iget-object v0, p1, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/android/server/SystemService$TargetUser;->mUserType:Ljava/lang/String;

    .line 23
    .line 24
    iget-boolean p1, p1, Landroid/content/pm/UserInfo;->preCreated:Z

    .line 25
    .line 26
    iput-boolean p1, p0, Lcom/android/server/SystemService$TargetUser;->mPreCreated:Z

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/SystemService$TargetUser;->isFull()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/SystemService$TargetUser;->isProfile()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    const/16 v0, 0x28

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/server/SystemService$TargetUser;->isFull()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    const-string/jumbo v0, "full"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/SystemService$TargetUser;->isProfile()Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    const-string/jumbo p0, "profile"

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    const/16 p0, 0x29

    .line 51
    .line 52
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(C)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/SystemService$TargetUser;->mUserId:I

    .line 2
    .line 3
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getUserIdentifier()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/SystemService$TargetUser;->mUserId:I

    .line 2
    .line 3
    return p0
.end method

.method public isFull()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/SystemService$TargetUser;->mFull:Z

    .line 2
    .line 3
    return p0
.end method

.method public isManagedProfile()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/SystemService$TargetUser;->mUserType:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0}, Landroid/os/UserManager;->isUserTypeManagedProfile(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public isPreCreated()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/SystemService$TargetUser;->mPreCreated:Z

    .line 2
    .line 3
    return p0
.end method

.method public isProfile()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/SystemService$TargetUser;->mProfile:Z

    .line 2
    .line 3
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/SystemService$TargetUser;->mUserId:I

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
