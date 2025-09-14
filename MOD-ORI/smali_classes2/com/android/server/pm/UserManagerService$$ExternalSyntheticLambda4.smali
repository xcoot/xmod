.class public final synthetic Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/UserManagerService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/UserManagerService;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/pm/UserManagerService;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda4;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final logEvent(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "UserManagerService"

    .line 7
    .line 8
    invoke-static {v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    iget p0, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda4;->f$1:I

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1, p0}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(I)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
