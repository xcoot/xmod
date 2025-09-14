.class public final Lcom/android/server/hdmi/HdmiCecMessageCache;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final CACHEABLE_OPCODES:Landroid/util/FastImmutableArraySet;


# instance fields
.field public final mCache:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Landroid/util/FastImmutableArraySet;

    .line 3
    const/16 v1, 0x47

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v1

    .line 9
    const/16 v2, 0x84

    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v2

    .line 15
    const/16 v3, 0x87

    .line 17
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v3

    .line 21
    const/16 v4, 0x9e

    .line 23
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object v4

    .line 27
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Integer;

    .line 30
    move-result-object v1

    .line 31
    invoke-direct {v0, v1}, Landroid/util/FastImmutableArraySet;-><init>([Ljava/lang/Object;)V

    .line 34
    sput-object v0, Lcom/android/server/hdmi/HdmiCecMessageCache;->CACHEABLE_OPCODES:Landroid/util/FastImmutableArraySet;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessageCache;->mCache:Landroid/util/SparseArray;

    .line 11
    return-void
.end method
