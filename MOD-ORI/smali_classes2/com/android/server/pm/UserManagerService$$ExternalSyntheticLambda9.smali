.class public final synthetic Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/UserManagerService;

.field public final synthetic f$1:Landroid/content/pm/UserInfo;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/UserManagerService;Landroid/content/pm/UserInfo;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/pm/UserManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda9;->f$1:Landroid/content/pm/UserInfo;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda9;->f$2:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda9;->f$1:Landroid/content/pm/UserInfo;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda9;->f$2:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 8
    .line 9
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    invoke-virtual {v2, v3, v4}, Lcom/android/server/pm/PackageManagerService;->onNewUserCreated(IZ)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, p0}, Lcom/android/server/pm/UserManagerService;->dispatchUserAdded(Landroid/content/pm/UserInfo;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    const-class p0, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 19
    .line 20
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 25
    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    iget v0, v1, Landroid/content/pm/UserInfo;->id:I

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroid/service/voice/VoiceInteractionManagerInternal;->onPreCreatedUserConversion(I)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method
