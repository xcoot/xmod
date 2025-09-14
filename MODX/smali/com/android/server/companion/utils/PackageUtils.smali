.class public abstract Lcom/android/server/companion/utils/PackageUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final COMPANION_SERVICE_INTENT:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "android.companion.CompanionDeviceService"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    sput-object v0, Lcom/android/server/companion/utils/PackageUtils;->COMPANION_SERVICE_INTENT:Landroid/content/Intent;

    .line 10
    return-void
.end method

.method public static enforceUsesCompanionDeviceFeature(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 7
    if-ne v0, v1, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 13
    move-result-object p0

    .line 14
    const-wide/16 v0, 0x5000

    .line 16
    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Lcom/android/server/companion/utils/PackageUtils$$ExternalSyntheticLambda1;

    .line 22
    invoke-direct {v1, p0, p1, v0, p2}, Lcom/android/server/companion/utils/PackageUtils$$ExternalSyntheticLambda1;-><init>(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)V

    .line 25
    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Landroid/content/pm/PackageInfo;

    .line 31
    if-eqz p0, :cond_3

    .line 33
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    .line 35
    if-eqz p0, :cond_2

    .line 37
    array-length p1, p0

    .line 38
    const/4 p2, 0x0

    .line 39
    :goto_0
    if-ge p2, p1, :cond_2

    .line 41
    aget-object v0, p0, p2

    .line 43
    const-string v1, "android.software.companion_device_setup"

    .line 45
    iget-object v0, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_1

    .line 53
    return-void

    .line 54
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 59
    const-string p1, "Must declare uses-feature android.software.companion_device_setup in manifest to use this API"

    .line 61
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 64
    throw p0

    .line 65
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 67
    const-string p2, "Package "

    .line 69
    const-string v0, " doesn\'t exist."

    .line 71
    invoke-static {p2, p1, v0}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 75
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 78
    throw p0
.end method

.method public static isPackageAllowlisted(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;Ljava/lang/String;II)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 8
    move-result-object p3

    .line 9
    invoke-static {p3, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    const-string v1, "CDM_PackageUtils"

    .line 15
    const/4 v2, 0x0

    .line 16
    if-nez v0, :cond_0

    .line 18
    new-instance p0, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const-string p1, " is not allowlisted."

    .line 28
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 35
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return v2

    .line 39
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0, p4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 47
    new-instance p4, Ljava/util/HashSet;

    .line 49
    invoke-direct {p4}, Ljava/util/HashSet;-><init>()V

    .line 52
    move v0, v2

    .line 53
    :goto_0
    array-length v3, p3

    .line 54
    if-ge v0, v3, :cond_2

    .line 56
    aget-object v3, p3, v0

    .line 58
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_1

    .line 64
    aget-object v3, p0, v0

    .line 66
    const-string v4, ":"

    .line 68
    const-string v5, ""

    .line 70
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {p4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 79
    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 83
    move-result-object p0

    .line 84
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 87
    move-result-object p0

    .line 88
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    .line 91
    move-result-object p0

    .line 92
    invoke-static {p0}, Landroid/util/PackageUtils;->computeSignaturesSha256Digests([Landroid/content/pm/Signature;)[Ljava/lang/String;

    .line 95
    move-result-object p0

    .line 96
    array-length p1, p0

    .line 97
    move p3, v2

    .line 98
    :goto_1
    if-ge p3, p1, :cond_4

    .line 100
    aget-object v0, p0, p3

    .line 102
    invoke-virtual {p4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_3

    .line 108
    const/4 v2, 0x1

    .line 109
    goto :goto_2

    .line 110
    :cond_3
    add-int/lit8 p3, p3, 0x1

    .line 112
    goto :goto_1

    .line 113
    :cond_4
    :goto_2
    if-nez v2, :cond_5

    .line 115
    const-string p0, "Certificate mismatch for allowlisted package "

    .line 117
    invoke-static {p0, p2, v1}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_5
    return v2
.end method
