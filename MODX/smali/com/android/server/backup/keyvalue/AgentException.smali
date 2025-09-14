.class Lcom/android/server/backup/keyvalue/AgentException;
.super Lcom/android/server/backup/keyvalue/BackupException;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field private final mTransitory:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/android/server/backup/keyvalue/BackupException;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/android/server/backup/keyvalue/AgentException;->mTransitory:Z

    return-void
.end method

.method public constructor <init>(ZLjava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroid/util/AndroidException;-><init>(Ljava/lang/Exception;)V

    .line 2
    iput-boolean p1, p0, Lcom/android/server/backup/keyvalue/AgentException;->mTransitory:Z

    return-void
.end method

.method public static permanent()Lcom/android/server/backup/keyvalue/AgentException;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/backup/keyvalue/AgentException;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/server/backup/keyvalue/AgentException;-><init>(Z)V

    .line 7
    return-object v0
.end method


# virtual methods
.method public final isTransitory()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/backup/keyvalue/AgentException;->mTransitory:Z

    .line 3
    return p0
.end method
