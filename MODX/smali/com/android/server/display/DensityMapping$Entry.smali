.class public final Lcom/android/server/display/DensityMapping$Entry;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ZEROES:Lcom/android/server/display/DensityMapping$Entry;


# instance fields
.field public final density:I

.field public final squaredDiagonal:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/display/DensityMapping$Entry;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, v1, v1}, Lcom/android/server/display/DensityMapping$Entry;-><init>(III)V

    .line 7
    sput-object v0, Lcom/android/server/display/DensityMapping$Entry;->ZEROES:Lcom/android/server/display/DensityMapping$Entry;

    .line 9
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    mul-int/2addr p1, p1

    .line 5
    mul-int/2addr p2, p2

    .line 6
    add-int/2addr p2, p1

    .line 7
    iput p2, p0, Lcom/android/server/display/DensityMapping$Entry;->squaredDiagonal:I

    .line 9
    iput p3, p0, Lcom/android/server/display/DensityMapping$Entry;->density:I

    .line 11
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "DensityMappingEntry{squaredDiagonal="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget v1, p0, Lcom/android/server/display/DensityMapping$Entry;->squaredDiagonal:I

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ", density="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget p0, p0, Lcom/android/server/display/DensityMapping$Entry;->density:I

    .line 20
    const/16 v1, 0x7d

    .line 22
    invoke-static {v0, p0, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method
