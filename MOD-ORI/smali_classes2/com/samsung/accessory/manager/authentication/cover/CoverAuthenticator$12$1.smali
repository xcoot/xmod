.class public final Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$12$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;

.field public final synthetic val$action:Ljava/lang/String;

.field public final synthetic val$requestPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$12$1;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$12$1;->val$action:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$12$1;->val$requestPackage:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$12$1;->val$action:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "com.samsung.accessory.manager.action.AUTHENTICATION_STATE_REQUEST"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$12$1;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 14
    .line 15
    new-instance v1, Landroid/content/Intent;

    .line 16
    .line 17
    const-string v2, "com.samsung.accessory.manager.action.AUTHENTICATION_STATE_REPLY"

    .line 18
    .line 19
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iput-object v1, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$12$1;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$12$1;->val$requestPackage:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$12$1;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;

    .line 36
    .line 37
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->sendFactoryResult()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$12$1;->val$action:Ljava/lang/String;

    .line 44
    .line 45
    const-string v1, "com.samsung.accessory.manager.action.START_AUTHENTICATION"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$12$1;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;

    .line 54
    .line 55
    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 56
    .line 57
    new-instance v1, Landroid/content/Intent;

    .line 58
    .line 59
    const-string v2, "com.samsung.accessory.manager.action.AUTHENTICATION_RESULT"

    .line 60
    .line 61
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iput-object v1, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    .line 65
    .line 66
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$12$1;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;

    .line 67
    .line 68
    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 69
    .line 70
    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    .line 71
    .line 72
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$12$1;->val$requestPackage:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    .line 76
    .line 77
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$12$1;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;

    .line 78
    .line 79
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 80
    .line 81
    const/4 v0, 0x0

    .line 82
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRetryCounterFactoryTest:I

    .line 83
    .line 84
    const/4 v1, 0x1

    .line 85
    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryTestRequested:Z

    .line 86
    .line 87
    const-wide/16 v1, 0x0

    .line 88
    .line 89
    invoke-virtual {p0, v1, v2, v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->startAuthentication(JZ)V

    .line 90
    .line 91
    .line 92
    :cond_1
    :goto_0
    return-void
.end method
