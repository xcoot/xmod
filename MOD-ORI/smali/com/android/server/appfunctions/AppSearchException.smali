.class public Lcom/android/server/appfunctions/AppSearchException;
.super Ljava/lang/RuntimeException;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field private final resultCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/appfunctions/AppSearchException;->resultCode:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getResultCode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/appfunctions/AppSearchException;->resultCode:I

    .line 2
    .line 3
    return p0
.end method
