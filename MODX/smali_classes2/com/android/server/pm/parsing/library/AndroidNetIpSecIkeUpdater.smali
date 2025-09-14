.class public Lcom/android/server/pm/parsing/library/AndroidNetIpSecIkeUpdater;
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
    .locals 0

    .line 1
    const-string p0, "android.net.ipsec.ike"

    .line 2
    .line 3
    invoke-interface {p1, p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->removeUsesLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1, p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 8
    .line 9
    .line 10
    return-void
.end method
