.class public Lcom/android/server/pm/parsing/library/AndroidHidlUpdater;
.super Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final updatePackage(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;ZZ)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getTargetSdkVersion()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/16 v0, 0x1c

    .line 6
    .line 7
    const-string v1, "android.hidl.manager-V1.0-java"

    .line 8
    .line 9
    const-string v2, "android.hidl.base-V1.0-java"

    .line 10
    .line 11
    if-gt p0, v0, :cond_1

    .line 12
    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    if-eqz p3, :cond_1

    .line 16
    .line 17
    :cond_0
    invoke-static {p1, v2}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;->prefixRequiredLibrary(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v1}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;->prefixRequiredLibrary(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-interface {p1, v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->removeUsesLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-interface {p0, v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->removeUsesLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-interface {p0, v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method
