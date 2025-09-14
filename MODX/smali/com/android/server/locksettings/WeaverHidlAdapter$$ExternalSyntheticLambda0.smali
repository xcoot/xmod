.class public final synthetic Lcom/android/server/locksettings/WeaverHidlAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/weaver/V1_0/IWeaver$readCallback;


# instance fields
.field public final synthetic f$0:[Landroid/hardware/weaver/WeaverReadResponse;


# direct methods
.method public synthetic constructor <init>([Landroid/hardware/weaver/WeaverReadResponse;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/locksettings/WeaverHidlAdapter$$ExternalSyntheticLambda0;->f$0:[Landroid/hardware/weaver/WeaverReadResponse;

    .line 6
    return-void
.end method


# virtual methods
.method public final onValues(ILandroid/hardware/weaver/V1_0/WeaverReadResponse;)V
    .locals 5

    .line 1
    new-instance v0, Landroid/hardware/weaver/WeaverReadResponse;

    .line 3
    invoke-direct {v0}, Landroid/hardware/weaver/WeaverReadResponse;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz p1, :cond_3

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq p1, v2, :cond_2

    .line 12
    const/4 v3, 0x2

    .line 13
    if-eq p1, v3, :cond_1

    .line 15
    const/4 v3, 0x3

    .line 16
    if-eq p1, v3, :cond_0

    .line 18
    const-string v3, "Unexpected status in read: "

    .line 20
    const-string v4, "WeaverHidlAdapter"

    .line 22
    invoke-static {p1, v3, v4}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 25
    iput v2, v0, Landroid/hardware/weaver/WeaverReadResponse;->status:I

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iput v3, v0, Landroid/hardware/weaver/WeaverReadResponse;->status:I

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iput v3, v0, Landroid/hardware/weaver/WeaverReadResponse;->status:I

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    iput v2, v0, Landroid/hardware/weaver/WeaverReadResponse;->status:I

    .line 36
    goto :goto_0

    .line 37
    :cond_3
    iput v1, v0, Landroid/hardware/weaver/WeaverReadResponse;->status:I

    .line 39
    :goto_0
    iget p1, p2, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->timeout:I

    .line 41
    int-to-long v2, p1

    .line 42
    iput-wide v2, v0, Landroid/hardware/weaver/WeaverReadResponse;->timeout:J

    .line 44
    iget-object p1, p2, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->value:Ljava/util/ArrayList;

    .line 46
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 49
    move-result p2

    .line 50
    new-array p2, p2, [B

    .line 52
    move v2, v1

    .line 53
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 56
    move-result v3

    .line 57
    if-ge v2, v3, :cond_4

    .line 59
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 62
    move-result-object v3

    .line 63
    check-cast v3, Ljava/lang/Byte;

    .line 65
    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    .line 68
    move-result v3

    .line 69
    aput-byte v3, p2, v2

    .line 71
    add-int/lit8 v2, v2, 0x1

    .line 73
    goto :goto_1

    .line 74
    :cond_4
    iput-object p2, v0, Landroid/hardware/weaver/WeaverReadResponse;->value:[B

    .line 76
    iget-object p0, p0, Lcom/android/server/locksettings/WeaverHidlAdapter$$ExternalSyntheticLambda0;->f$0:[Landroid/hardware/weaver/WeaverReadResponse;

    .line 78
    aput-object v0, p0, v1

    .line 80
    return-void
.end method
