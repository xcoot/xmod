.class public final Landroid/hidl/manager/V1_0/IServiceManager$Transport;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final EMPTY:B = 0x0t

.field public static final HWBINDER:B = 0x1t

.field public static final PASSTHROUGH:B = 0x2t


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static final dumpBitfield(B)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "EMPTY"

    .line 3
    invoke-static {v0}, Landroid/hardware/usb/V1_1/PortStatus_1_1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 6
    move-result-object v0

    .line 7
    and-int/lit8 v1, p0, 0x1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-ne v1, v2, :cond_0

    .line 12
    const-string v1, "HWBINDER"

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    int-to-byte v1, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :goto_0
    and-int/lit8 v2, p0, 0x2

    .line 22
    const/4 v3, 0x2

    .line 23
    if-ne v2, v3, :cond_1

    .line 25
    const-string v2, "PASSTHROUGH"

    .line 27
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    or-int/lit8 v1, v1, 0x2

    .line 32
    int-to-byte v1, v1

    .line 33
    :cond_1
    if-eq p0, v1, :cond_2

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    const-string v3, "0x"

    .line 39
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    not-int v1, v1

    .line 43
    and-int/2addr p0, v1

    .line 44
    int-to-byte p0, p0

    .line 45
    invoke-static {p0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    .line 48
    move-result p0

    .line 49
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_2
    const-string p0, " | "

    .line 65
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 68
    move-result-object p0

    .line 69
    return-object p0
.end method

.method public static final toString(B)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 3
    const-string p0, "EMPTY"

    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    if-ne p0, v0, :cond_1

    .line 9
    const-string p0, "HWBINDER"

    .line 11
    return-object p0

    .line 12
    :cond_1
    const/4 v0, 0x2

    .line 13
    if-ne p0, v0, :cond_2

    .line 15
    const-string p0, "PASSTHROUGH"

    .line 17
    return-object p0

    .line 18
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    const-string v1, "0x"

    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-static {p0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    .line 28
    move-result p0

    .line 29
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method
