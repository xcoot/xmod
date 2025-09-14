.class public final Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final nativeLibraryDir:Ljava/lang/String;

.field public final nativeLibraryRootDir:Ljava/lang/String;

.field public final nativeLibraryRootRequiresIsa:Z

.field public final secondaryNativeLibraryDir:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->nativeLibraryRootDir:Ljava/lang/String;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->nativeLibraryRootRequiresIsa:Z

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->nativeLibraryDir:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->secondaryNativeLibraryDir:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final applyTo(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->nativeLibraryRootDir:Ljava/lang/String;

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setNativeLibraryRootDir(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-boolean v0, p0, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->nativeLibraryRootRequiresIsa:Z

    .line 8
    .line 9
    invoke-interface {p1, v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setNativeLibraryRootRequiresIsa(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v0, p0, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->nativeLibraryDir:Ljava/lang/String;

    .line 14
    .line 15
    invoke-interface {p1, v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setNativeLibraryDir(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p0, p0, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->secondaryNativeLibraryDir:Ljava/lang/String;

    .line 20
    .line 21
    invoke-interface {p1, p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSecondaryNativeLibraryDir(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 22
    .line 23
    .line 24
    return-void
.end method
