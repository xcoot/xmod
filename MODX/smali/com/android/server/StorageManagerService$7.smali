.class public final Lcom/android/server/StorageManagerService$7;
.super Lcom/android/internal/content/PackageMonitor;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/StorageManagerService$7;->this$0:Lcom/android/server/StorageManagerService;

    .line 3
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onPackageRemoved(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/StorageManagerService$7;->this$0:Lcom/android/server/StorageManagerService;

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/StorageManagerService;->updateLegacyStorageApps(ILjava/lang/String;Z)V

    .line 7
    return-void
.end method
