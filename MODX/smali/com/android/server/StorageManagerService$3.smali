.class public final Lcom/android/server/StorageManagerService$3;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 7
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->refreshZramSettings()V

    .line 6
    return-void
.end method
