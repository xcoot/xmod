.class public final synthetic Lcom/android/server/storage/StorageUserConnection$ActiveConnection$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/storage/StorageUserConnection$AsyncStorageServiceCall;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput-wide p2, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$$ExternalSyntheticLambda0;->f$2:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run(Landroid/service/storage/IExternalStorageService;Landroid/os/RemoteCallback;)V
    .locals 6

    .line 1
    iget-object v2, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 2
    .line 3
    iget-wide v3, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$$ExternalSyntheticLambda0;->f$2:J

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 6
    .line 7
    move-object v0, p1

    .line 8
    move-object v5, p2

    .line 9
    invoke-interface/range {v0 .. v5}, Landroid/service/storage/IExternalStorageService;->freeCache(Ljava/lang/String;Ljava/lang/String;JLandroid/os/RemoteCallback;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
