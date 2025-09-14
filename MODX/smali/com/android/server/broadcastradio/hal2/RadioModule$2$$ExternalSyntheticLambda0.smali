.class public final synthetic Lcom/android/server/broadcastradio/hal2/RadioModule$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroid/hardware/broadcastradio/V2_0/Announcement;

    .line 3
    sget-object p0, Lcom/android/server/broadcastradio/hal2/Convert;->METADATA_KEYS:Landroid/util/SparseArray;

    .line 5
    new-instance p0, Landroid/hardware/radio/Announcement;

    .line 7
    iget-object v0, p1, Landroid/hardware/broadcastradio/V2_0/Announcement;->selector:Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    .line 9
    invoke-static {v0}, Lcom/android/server/broadcastradio/hal2/Convert;->programSelectorFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramSelector;)Landroid/hardware/radio/ProgramSelector;

    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-byte v1, p1, Landroid/hardware/broadcastradio/V2_0/Announcement;->type:B

    .line 18
    iget-object p1, p1, Landroid/hardware/broadcastradio/V2_0/Announcement;->vendorInfo:Ljava/util/ArrayList;

    .line 20
    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/Convert;->vendorInfoFromHal(Ljava/util/List;)Ljava/util/Map;

    .line 23
    move-result-object p1

    .line 24
    invoke-direct {p0, v0, v1, p1}, Landroid/hardware/radio/Announcement;-><init>(Landroid/hardware/radio/ProgramSelector;ILjava/util/Map;)V

    .line 27
    return-object p0
.end method
