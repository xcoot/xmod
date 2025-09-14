.class public final Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$1;->this$0:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getUsers(Z)Ljava/util/List;

    .line 5
    move-result-object v1

    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 9
    move-result v2

    .line 10
    const/4 v3, 0x0

    .line 11
    :goto_0
    if-ge v3, v2, :cond_0

    .line 13
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v4

    .line 17
    check-cast v4, Landroid/content/pm/UserInfo;

    .line 19
    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 21
    iget-object v5, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$1;->this$0:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;

    .line 23
    iget-object v6, v5, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteControlDisabled:Landroid/util/SparseArray;

    .line 25
    invoke-virtual {v5, v4}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteControlAllowed(I)Z

    .line 28
    move-result v5

    .line 29
    xor-int/2addr v5, v0

    .line 30
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 33
    move-result-object v5

    .line 34
    invoke-virtual {v6, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 37
    add-int/lit8 v3, v3, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    return-void
.end method
