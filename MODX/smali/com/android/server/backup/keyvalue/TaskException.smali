.class Lcom/android/server/backup/keyvalue/TaskException;
.super Lcom/android/server/backup/keyvalue/BackupException;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field private final mStateCompromised:Z

.field private final mStatus:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/android/server/backup/keyvalue/BackupException;-><init>()V

    .line 5
    iput-boolean p2, p0, Lcom/android/server/backup/keyvalue/TaskException;->mStateCompromised:Z

    .line 6
    iput p1, p0, Lcom/android/server/backup/keyvalue/TaskException;->mStatus:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/util/AndroidException;-><init>(Ljava/lang/Exception;)V

    .line 2
    iput-boolean p2, p0, Lcom/android/server/backup/keyvalue/TaskException;->mStateCompromised:Z

    .line 3
    iput p3, p0, Lcom/android/server/backup/keyvalue/TaskException;->mStatus:I

    return-void
.end method

.method public static stateCompromised(Ljava/lang/Exception;)Lcom/android/server/backup/keyvalue/TaskException;
    .locals 3

    .line 1
    instance-of v0, p0, Lcom/android/server/backup/keyvalue/TaskException;

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 6
    move-object v0, p0

    .line 7
    check-cast v0, Lcom/android/server/backup/keyvalue/TaskException;

    .line 9
    new-instance v2, Lcom/android/server/backup/keyvalue/TaskException;

    .line 11
    iget v0, v0, Lcom/android/server/backup/keyvalue/TaskException;->mStatus:I

    .line 13
    invoke-direct {v2, p0, v1, v0}, Lcom/android/server/backup/keyvalue/TaskException;-><init>(Ljava/lang/Exception;ZI)V

    .line 16
    return-object v2

    .line 17
    :cond_0
    new-instance v0, Lcom/android/server/backup/keyvalue/TaskException;

    .line 19
    const/16 v2, -0x3e8

    .line 21
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/backup/keyvalue/TaskException;-><init>(Ljava/lang/Exception;ZI)V

    .line 24
    return-object v0
.end method


# virtual methods
.method public final getStatus()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/backup/keyvalue/TaskException;->mStatus:I

    .line 3
    return p0
.end method

.method public final isStateCompromised()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/backup/keyvalue/TaskException;->mStateCompromised:Z

    .line 3
    return p0
.end method
