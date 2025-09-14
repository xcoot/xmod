.class final enum Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

.field public static final enum PACKAGE_FEATURE:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

.field public static final enum PACKAGE_FEATURE_OPTION_FORCE_UPDATE:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

.field public static final enum PACKAGE_FEATURE_OPTION_POLICY_RESET:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

.field public static final enum PACKAGE_FEATURE_OPTION_SHOW_PACKAGE_NAME:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;


# instance fields
.field mCommand:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    .line 2
    .line 3
    const-string v1, "-packagefeature"

    .line 4
    .line 5
    const-string v2, "PACKAGE_FEATURE"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v3, v2, v1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->PACKAGE_FEATURE:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    .line 12
    .line 13
    new-instance v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    .line 14
    .line 15
    const-string v2, "ForceUpdate"

    .line 16
    .line 17
    const-string v3, "PACKAGE_FEATURE_OPTION_FORCE_UPDATE"

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    invoke-direct {v1, v4, v3, v2}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->PACKAGE_FEATURE_OPTION_FORCE_UPDATE:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    .line 24
    .line 25
    new-instance v2, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    .line 26
    .line 27
    const-string v3, "PolicyReset"

    .line 28
    .line 29
    const-string v4, "PACKAGE_FEATURE_OPTION_POLICY_RESET"

    .line 30
    .line 31
    const/4 v5, 0x2

    .line 32
    invoke-direct {v2, v5, v4, v3}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v2, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->PACKAGE_FEATURE_OPTION_POLICY_RESET:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    .line 36
    .line 37
    new-instance v3, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    .line 38
    .line 39
    const-string v4, "ShowPackageName"

    .line 40
    .line 41
    const-string v5, "PACKAGE_FEATURE_OPTION_SHOW_PACKAGE_NAME"

    .line 42
    .line 43
    const/4 v6, 0x3

    .line 44
    invoke-direct {v3, v6, v5, v4}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v3, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->PACKAGE_FEATURE_OPTION_SHOW_PACKAGE_NAME:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    .line 48
    .line 49
    new-instance v4, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    .line 50
    .line 51
    const-string v5, "-setPolicyDisabled"

    .line 52
    .line 53
    const-string v6, "SET_POLICY_DISABLED_COMMAND"

    .line 54
    .line 55
    const/4 v7, 0x4

    .line 56
    invoke-direct {v4, v7, v6, v5}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    sput-object v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->$VALUES:[Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    .line 64
    .line 65
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->mCommand:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->$VALUES:[Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    .line 8
    .line 9
    return-object v0
.end method
