.class public final Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$10;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

.field public final synthetic val$allowed:Z


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$10;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$10;->val$allowed:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->sIsFelicaAllowed:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v0, v1

    .line 9
    :goto_0
    iget-boolean v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$10;->val$allowed:Z

    .line 10
    .line 11
    if-eqz v2, :cond_3

    .line 12
    .line 13
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$10;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getCoverSwitchState()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x1

    .line 20
    if-lt v2, v3, :cond_3

    .line 21
    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$10;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$10;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 37
    .line 38
    const/4 v2, 0x4

    .line 39
    iput v2, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthType:I

    .line 40
    .line 41
    iget v2, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->currentHall:I

    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    if-nez v2, :cond_1

    .line 45
    .line 46
    invoke-virtual {v0, v1, v4, v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setCoverVerified(ZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    invoke-virtual {v0, v1, v4, v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setFriendsVerified(ZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$10;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 54
    .line 55
    const-wide/16 v0, 0x0

    .line 56
    .line 57
    invoke-virtual {p0, v0, v1, v3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->startAuthentication(JZ)V

    .line 58
    .line 59
    .line 60
    :cond_3
    return-void
.end method
