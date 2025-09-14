.class public final Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1$$ExternalSyntheticLambda1;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;Landroid/content/ComponentName;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method
