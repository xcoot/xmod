.class public final Lcom/android/server/backup/params/RestoreGetSetsParams;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

.field public final mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

.field public final observer:Landroid/app/backup/IRestoreObserver;

.field public final session:Lcom/android/server/backup/restore/ActiveRestoreSession;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/transport/TransportConnection;Lcom/android/server/backup/restore/ActiveRestoreSession;Landroid/app/backup/IRestoreObserver;Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/backup/params/RestoreGetSetsParams;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/backup/params/RestoreGetSetsParams;->session:Lcom/android/server/backup/restore/ActiveRestoreSession;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/backup/params/RestoreGetSetsParams;->listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 11
    .line 12
    return-void
.end method
