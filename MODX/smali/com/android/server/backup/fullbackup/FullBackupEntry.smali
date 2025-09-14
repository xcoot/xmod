.class public final Lcom/android/server/backup/fullbackup/FullBackupEntry;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final lastBackup:J

.field public final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p3, p0, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    .line 6
    iput-wide p1, p0, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J

    .line 8
    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    .line 3
    iget-wide v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J

    .line 5
    iget-wide p0, p1, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J

    .line 7
    cmp-long p0, v0, p0

    .line 9
    if-gez p0, :cond_0

    .line 11
    const/4 p0, -0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    if-lez p0, :cond_1

    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method
