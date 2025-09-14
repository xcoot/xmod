.class public final synthetic Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageArchiver;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroid/content/IntentSender;

.field public final synthetic f$5:I

.field public final synthetic f$6:I

.field public final synthetic f$7:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageArchiver;Ljava/lang/String;Ljava/lang/String;ILandroid/content/IntentSender;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/pm/PackageArchiver;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda8;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda8;->f$3:I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda8;->f$4:Landroid/content/IntentSender;

    .line 13
    .line 14
    iput p6, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda8;->f$5:I

    .line 15
    .line 16
    iput p7, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda8;->f$6:I

    .line 17
    .line 18
    iput p8, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda8;->f$7:I

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/pm/PackageArchiver;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v4, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda8;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    iget v5, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda8;->f$3:I

    .line 8
    .line 9
    iget-object v6, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda8;->f$4:Landroid/content/IntentSender;

    .line 10
    .line 11
    iget v7, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda8;->f$5:I

    .line 12
    .line 13
    iget v8, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda8;->f$6:I

    .line 14
    .line 15
    iget v9, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda8;->f$7:I

    .line 16
    .line 17
    check-cast p1, Ljava/lang/Void;

    .line 18
    .line 19
    iget-object p0, v0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 22
    .line 23
    new-instance v3, Landroid/content/pm/VersionedPackage;

    .line 24
    .line 25
    const/4 p0, -0x1

    .line 26
    invoke-direct {v3, v1, p0}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/pm/PackageInstallerService;->uninstall(Landroid/content/pm/VersionedPackage;Ljava/lang/String;ILandroid/content/IntentSender;III)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
