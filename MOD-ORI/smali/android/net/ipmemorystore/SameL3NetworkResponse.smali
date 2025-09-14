.class public Landroid/net/ipmemorystore/SameL3NetworkResponse;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final NETWORK_DIFFERENT:I = 0x2

.field public static final NETWORK_NEVER_CONNECTED:I = 0x3

.field public static final NETWORK_SAME:I = 0x1


# instance fields
.field public final confidence:F

.field public final l2Key1:Ljava/lang/String;

.field public final l2Key2:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/ipmemorystore/SameL3NetworkResponseParcelable;)V
    .locals 2

    .line 5
    iget-object v0, p1, Landroid/net/ipmemorystore/SameL3NetworkResponseParcelable;->l2Key1:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/ipmemorystore/SameL3NetworkResponseParcelable;->l2Key2:Ljava/lang/String;

    iget p1, p1, Landroid/net/ipmemorystore/SameL3NetworkResponseParcelable;->confidence:F

    invoke-direct {p0, v0, v1, p1}, Landroid/net/ipmemorystore/SameL3NetworkResponse;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->l2Key1:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->l2Key2:Ljava/lang/String;

    .line 4
    iput p3, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->confidence:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Landroid/net/ipmemorystore/SameL3NetworkResponse;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Landroid/net/ipmemorystore/SameL3NetworkResponse;

    .line 8
    .line 9
    iget-object v0, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->l2Key1:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v2, p1, Landroid/net/ipmemorystore/SameL3NetworkResponse;->l2Key1:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->l2Key2:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v2, p1, Landroid/net/ipmemorystore/SameL3NetworkResponse;->l2Key2:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget p0, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->confidence:F

    .line 30
    .line 31
    iget p1, p1, Landroid/net/ipmemorystore/SameL3NetworkResponse;->confidence:F

    .line 32
    .line 33
    cmpl-float p0, p0, p1

    .line 34
    .line 35
    if-nez p0, :cond_1

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    :cond_1
    return v1
.end method

.method public final getNetworkSameness()I
    .locals 4

    .line 1
    iget p0, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->confidence:F

    .line 2
    .line 3
    float-to-double v0, p0

    .line 4
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 5
    .line 6
    cmpl-double v0, v0, v2

    .line 7
    .line 8
    if-gtz v0, :cond_2

    .line 9
    .line 10
    float-to-double v0, p0

    .line 11
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    cmpg-double v0, v0, v2

    .line 14
    .line 15
    if-gez v0, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    float-to-double v0, p0

    .line 19
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 20
    .line 21
    cmpl-double p0, v0, v2

    .line 22
    .line 23
    if-lez p0, :cond_1

    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p0, 0x2

    .line 28
    :goto_0
    return p0

    .line 29
    :cond_2
    :goto_1
    const/4 p0, 0x3

    .line 30
    return p0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->l2Key1:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->l2Key2:Ljava/lang/String;

    .line 4
    .line 5
    iget p0, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->confidence:F

    .line 6
    .line 7
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public toParcelable()Landroid/net/ipmemorystore/SameL3NetworkResponseParcelable;
    .locals 2

    .line 1
    new-instance v0, Landroid/net/ipmemorystore/SameL3NetworkResponseParcelable;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/net/ipmemorystore/SameL3NetworkResponseParcelable;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->l2Key1:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v1, v0, Landroid/net/ipmemorystore/SameL3NetworkResponseParcelable;->l2Key1:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v1, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->l2Key2:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v1, v0, Landroid/net/ipmemorystore/SameL3NetworkResponseParcelable;->l2Key2:Ljava/lang/String;

    .line 13
    .line 14
    iget p0, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->confidence:F

    .line 15
    .line 16
    iput p0, v0, Landroid/net/ipmemorystore/SameL3NetworkResponseParcelable;->confidence:F

    .line 17
    .line 18
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/net/ipmemorystore/SameL3NetworkResponse;->getNetworkSameness()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const-string v2, "\""

    .line 7
    .line 8
    if-eq v0, v1, :cond_2

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v1, "Buggy sameness value ? \""

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->l2Key1:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, "\", \""

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->l2Key2:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v0, p0, v2}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->l2Key1:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v1, "\" can\'t be tested against \""

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-object p0, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->l2Key2:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v0, p0, v2}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0

    .line 62
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->l2Key1:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v1, "\" different L3 network from \""

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    iget-object p0, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->l2Key2:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {v0, p0, v2}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    return-object p0

    .line 84
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->l2Key1:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v1, "\" same L3 network as \""

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget-object p0, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->l2Key2:Ljava/lang/String;

    .line 100
    .line 101
    invoke-static {v0, p0, v2}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    return-object p0
.end method
