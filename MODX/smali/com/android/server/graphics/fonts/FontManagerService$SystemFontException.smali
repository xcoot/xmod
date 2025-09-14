.class Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;
.super Landroid/util/AndroidException;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field private final mErrorCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p2}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    .line 4
    iput p1, p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;->mErrorCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iput p1, p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;->mErrorCode:I

    return-void
.end method


# virtual methods
.method public final getErrorCode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;->mErrorCode:I

    .line 3
    return p0
.end method
