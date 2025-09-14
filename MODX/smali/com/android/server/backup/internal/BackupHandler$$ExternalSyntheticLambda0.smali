.class public final synthetic Lcom/android/server/backup/internal/BackupHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/backup/internal/OnTaskFinishedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/backup/TransportManager;

.field public final synthetic f$1:Lcom/android/server/backup/transport/TransportConnection;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportConnection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/backup/internal/BackupHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/backup/TransportManager;

    .line 6
    iput-object p2, p0, Lcom/android/server/backup/internal/BackupHandler$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/backup/transport/TransportConnection;

    .line 8
    return-void
.end method


# virtual methods
.method public final onFinished(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/internal/BackupHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/backup/TransportManager;

    .line 3
    iget-object p0, p0, Lcom/android/server/backup/internal/BackupHandler$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/backup/transport/TransportConnection;

    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    .line 8
    return-void
.end method
