.class public final Lcom/android/server/textclassifier/IconsUriHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEFAULT_ID_SUPPLIER:Lcom/android/server/textclassifier/IconsUriHelper$$ExternalSyntheticLambda0;

.field public static final sSingleton:Lcom/android/server/textclassifier/IconsUriHelper;


# instance fields
.field public final mIdSupplier:Ljava/util/function/Supplier;

.field public final mPackageIds:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/textclassifier/IconsUriHelper$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/textclassifier/IconsUriHelper;->DEFAULT_ID_SUPPLIER:Lcom/android/server/textclassifier/IconsUriHelper$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    new-instance v0, Lcom/android/server/textclassifier/IconsUriHelper;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/android/server/textclassifier/IconsUriHelper;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/android/server/textclassifier/IconsUriHelper;->sSingleton:Lcom/android/server/textclassifier/IconsUriHelper;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/textclassifier/IconsUriHelper;->mPackageIds:Ljava/util/Map;

    .line 10
    .line 11
    sget-object v1, Lcom/android/server/textclassifier/IconsUriHelper;->DEFAULT_ID_SUPPLIER:Lcom/android/server/textclassifier/IconsUriHelper$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    iput-object v1, p0, Lcom/android/server/textclassifier/IconsUriHelper;->mIdSupplier:Ljava/util/function/Supplier;

    .line 14
    .line 15
    const-string p0, "android"

    .line 16
    .line 17
    invoke-virtual {v0, p0, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    return-void
.end method
