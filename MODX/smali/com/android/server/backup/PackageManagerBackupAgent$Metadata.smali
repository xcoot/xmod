.class public final Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final sigHashes:Ljava/util/ArrayList;

.field public final versionCode:J


# direct methods
.method public constructor <init>(JLjava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:J

    .line 6
    iput-object p3, p0, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->sigHashes:Ljava/util/ArrayList;

    .line 8
    return-void
.end method
