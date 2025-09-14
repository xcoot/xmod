.class public Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final KGTA_FAILED:I = -0x4d2

.field public static final KGTA_PARAM_DEFAULT:I = 0x0

.field public static TAG:Ljava/lang/String; = "KgErrWrapper"


# instance fields
.field public data:[B

.field public err:I

.field public result:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x4d2

    .line 4
    iput v0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    return-void
.end method


# virtual methods
.method public final getStr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->data:[B

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return-object v0
.end method

.method public final setErr(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    .line 2
    .line 3
    return-void
.end method
