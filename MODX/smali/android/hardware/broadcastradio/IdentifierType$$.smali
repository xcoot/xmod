.class public interface abstract Landroid/hardware/broadcastradio/IdentifierType$$;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static arrayToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    .line 1
    if-nez p0, :cond_0

    .line 3
    const-string/jumbo p0, "null"

    .line 6
    return-object p0

    .line 7
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_4

    .line 17
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Ljava/util/StringJoiner;

    .line 23
    const-string v3, "["

    .line 25
    const-string v4, "]"

    .line 27
    const-string v5, ", "

    .line 29
    invoke-direct {v2, v5, v3, v4}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 32
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    .line 35
    move-result v1

    .line 36
    const/4 v3, 0x0

    .line 37
    if-eqz v1, :cond_1

    .line 39
    :goto_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 42
    move-result v0

    .line 43
    if-ge v3, v0, :cond_2

    .line 45
    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 48
    move-result-object v0

    .line 49
    invoke-static {v0}, Landroid/hardware/broadcastradio/IdentifierType$$;->arrayToString(Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v2, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 56
    add-int/lit8 v3, v3, 0x1

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const-class v1, [I

    .line 61
    if-ne v0, v1, :cond_3

    .line 63
    check-cast p0, [I

    .line 65
    array-length v0, p0

    .line 66
    :goto_1
    if-ge v3, v0, :cond_2

    .line 68
    aget v1, p0, v3

    .line 70
    invoke-static {v1}, Landroid/hardware/broadcastradio/IdentifierType$$;->toString(I)Ljava/lang/String;

    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v2, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 77
    add-int/lit8 v3, v3, 0x1

    .line 79
    goto :goto_1

    .line 80
    :cond_2
    invoke-virtual {v2}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    .line 83
    move-result-object p0

    .line 84
    return-object p0

    .line 85
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    .line 89
    const-string/jumbo v2, "wrong type: "

    .line 92
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object v0

    .line 102
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 105
    throw p0

    .line 106
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    .line 110
    const-string/jumbo v2, "not an array: "

    .line 113
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    move-result-object p0

    .line 123
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 126
    throw v0
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0x3e8

    .line 3
    if-ne p0, v0, :cond_0

    .line 5
    const-string p0, "VENDOR_START"

    .line 7
    return-object p0

    .line 8
    :cond_0
    const/16 v0, 0x7cf

    .line 10
    if-ne p0, v0, :cond_1

    .line 12
    const-string p0, "VENDOR_END"

    .line 14
    return-object p0

    .line 15
    :cond_1
    if-nez p0, :cond_2

    .line 17
    const-string p0, "INVALID"

    .line 19
    return-object p0

    .line 20
    :cond_2
    const/4 v0, 0x1

    .line 21
    if-ne p0, v0, :cond_3

    .line 23
    const-string p0, "AMFM_FREQUENCY_KHZ"

    .line 25
    return-object p0

    .line 26
    :cond_3
    const/4 v0, 0x2

    .line 27
    if-ne p0, v0, :cond_4

    .line 29
    const-string p0, "RDS_PI"

    .line 31
    return-object p0

    .line 32
    :cond_4
    const/4 v0, 0x3

    .line 33
    if-ne p0, v0, :cond_5

    .line 35
    const-string p0, "HD_STATION_ID_EXT"

    .line 37
    return-object p0

    .line 38
    :cond_5
    const/4 v0, 0x4

    .line 39
    if-ne p0, v0, :cond_6

    .line 41
    const-string p0, "HD_STATION_NAME"

    .line 43
    return-object p0

    .line 44
    :cond_6
    const/4 v0, 0x5

    .line 45
    if-ne p0, v0, :cond_7

    .line 47
    const-string p0, "DAB_SID_EXT"

    .line 49
    return-object p0

    .line 50
    :cond_7
    const/4 v0, 0x6

    .line 51
    if-ne p0, v0, :cond_8

    .line 53
    const-string p0, "DAB_ENSEMBLE"

    .line 55
    return-object p0

    .line 56
    :cond_8
    const/4 v0, 0x7

    .line 57
    if-ne p0, v0, :cond_9

    .line 59
    const-string p0, "DAB_SCID"

    .line 61
    return-object p0

    .line 62
    :cond_9
    const/16 v0, 0x8

    .line 64
    if-ne p0, v0, :cond_a

    .line 66
    const-string p0, "DAB_FREQUENCY_KHZ"

    .line 68
    return-object p0

    .line 69
    :cond_a
    const/16 v0, 0x9

    .line 71
    if-ne p0, v0, :cond_b

    .line 73
    const-string p0, "DRMO_SERVICE_ID"

    .line 75
    return-object p0

    .line 76
    :cond_b
    const/16 v0, 0xa

    .line 78
    if-ne p0, v0, :cond_c

    .line 80
    const-string p0, "DRMO_FREQUENCY_KHZ"

    .line 82
    return-object p0

    .line 83
    :cond_c
    const/16 v0, 0xc

    .line 85
    if-ne p0, v0, :cond_d

    .line 87
    const-string p0, "SXM_SERVICE_ID"

    .line 89
    return-object p0

    .line 90
    :cond_d
    const/16 v0, 0xd

    .line 92
    if-ne p0, v0, :cond_e

    .line 94
    const-string p0, "SXM_CHANNEL"

    .line 96
    return-object p0

    .line 97
    :cond_e
    const/16 v0, 0xe

    .line 99
    if-ne p0, v0, :cond_f

    .line 101
    const-string p0, "HD_STATION_LOCATION"

    .line 103
    return-object p0

    .line 104
    :cond_f
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 107
    move-result-object p0

    .line 108
    return-object p0
.end method
