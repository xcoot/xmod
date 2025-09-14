.class public final Lcom/android/server/backup/UserBackupManagerService$4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/backup/UserBackupManagerService;

.field public final synthetic val$packageName:Ljava/lang/String;

.field public final synthetic val$targets:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService$4;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/backup/UserBackupManagerService$4;->val$packageName:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/backup/UserBackupManagerService$4;->val$targets:Ljava/util/HashSet;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$4;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService$4;->val$packageName:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService$4;->val$targets:Ljava/util/HashSet;

    .line 6
    .line 7
    invoke-virtual {v0, v1, p0}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
