.class public final synthetic Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    .line 3
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 5
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v0

    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroid/content/pm/UserInfo;

    .line 29
    new-instance v2, Lcom/android/server/SystemService$TargetUser;

    .line 31
    invoke-direct {v2, v1}, Lcom/android/server/SystemService$TargetUser;-><init>(Landroid/content/pm/UserInfo;)V

    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-virtual {p0, v2, v1}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->trySyncRuntimeMetadata(Lcom/android/server/SystemService$TargetUser;Z)V

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method
