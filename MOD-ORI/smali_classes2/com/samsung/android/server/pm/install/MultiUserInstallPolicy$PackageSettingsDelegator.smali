.class public final Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAddDisabledComponent:Lcom/android/internal/util/function/TriConsumer;

.field public final mGetPackagesLocked:Ljava/util/function/Supplier;

.field public final mSetEnabled:Lcom/android/internal/util/function/TriConsumer;

.field public final mSetInstalled:Lcom/android/internal/util/function/TriConsumer;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda44;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda68;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda68;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda68;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;->mGetPackagesLocked:Ljava/util/function/Supplier;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;->mSetInstalled:Lcom/android/internal/util/function/TriConsumer;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;->mSetEnabled:Lcom/android/internal/util/function/TriConsumer;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;->mAddDisabledComponent:Lcom/android/internal/util/function/TriConsumer;

    .line 11
    .line 12
    return-void
.end method
