.class public final Lcom/android/server/inputmethod/AdditionalSubtypeMap;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final EMPTY_MAP:Lcom/android/server/inputmethod/AdditionalSubtypeMap;


# instance fields
.field public final mMap:Landroid/util/ArrayMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    .line 3
    new-instance v1, Landroid/util/ArrayMap;

    .line 5
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 8
    invoke-direct {v0, v1}, Lcom/android/server/inputmethod/AdditionalSubtypeMap;-><init>(Landroid/util/ArrayMap;)V

    .line 11
    sput-object v0, Lcom/android/server/inputmethod/AdditionalSubtypeMap;->EMPTY_MAP:Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/util/ArrayMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMap;->mMap:Landroid/util/ArrayMap;

    .line 6
    return-void
.end method
