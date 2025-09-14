.class public final Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mChecksums:[Landroid/content/pm/Checksum;

.field public final mSignature:[B


# direct methods
.method public constructor <init>([Landroid/content/pm/Checksum;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;->mChecksums:[Landroid/content/pm/Checksum;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;->mSignature:[B

    .line 7
    .line 8
    return-void
.end method
