.class public final Lcom/android/server/wm/utils/OptPropFactory;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/utils/OptPropFactory;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/utils/OptPropFactory;->mPackageName:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/String;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/wm/utils/OptPropFactory$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/wm/utils/OptPropFactory$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/utils/OptPropFactory;Ljava/lang/String;I)V

    .line 2
    new-instance p0, Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    new-instance v1, Lcom/android/server/wm/utils/OptPropFactory$OptProp$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;-><init>(Lcom/android/server/wm/utils/OptPropFactory$$ExternalSyntheticLambda0;Ljava/lang/String;Ljava/util/function/BooleanSupplier;)V

    return-object p0
.end method

.method public final create(Ljava/lang/String;Ljava/util/function/BooleanSupplier;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;
    .locals 2

    .line 3
    new-instance v0, Lcom/android/server/wm/utils/OptPropFactory$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/wm/utils/OptPropFactory$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/utils/OptPropFactory;Ljava/lang/String;I)V

    .line 4
    new-instance p0, Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;-><init>(Lcom/android/server/wm/utils/OptPropFactory$$ExternalSyntheticLambda0;Ljava/lang/String;Ljava/util/function/BooleanSupplier;)V

    return-object p0
.end method
