.class public final synthetic Lcom/android/server/people/data/ConversationStatusExpirationBroadcastReceiver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/people/data/ConversationStatusExpirationBroadcastReceiver$$ExternalSyntheticLambda0;->f$0:Landroid/content/Intent;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/people/data/ConversationStatusExpirationBroadcastReceiver$$ExternalSyntheticLambda0;->f$0:Landroid/content/Intent;

    .line 2
    .line 3
    const-class v0, Lcom/android/server/people/PeopleServiceInternal;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/server/people/PeopleServiceInternal;

    .line 10
    .line 11
    const-string/jumbo v1, "userId"

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    new-instance v1, Landroid/os/CancellationSignal;

    .line 23
    .line 24
    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p0, v1}, Lcom/android/server/people/PeopleServiceInternal;->pruneDataForUser(ILandroid/os/CancellationSignal;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
