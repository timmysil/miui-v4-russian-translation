.class Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;
.super Ljava/util/AbstractSet;
.source "Multimaps.java"


# instance fields
.field final synthetic na:Lcom/google/common/collect/Multimaps$MapMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimaps$MapMultimap;)V
    .locals 0
    .parameter

    .prologue
    .line 1095
    iput-object p1, p0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;->na:Lcom/google/common/collect/Multimaps$MapMultimap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1125
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_1

    .line 1133
    :cond_0
    :goto_0
    return v2

    .line 1128
    :cond_1
    check-cast p1, Ljava/util/Map$Entry;

    .line 1129
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 1132
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1133
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v3, v1, :cond_2

    iget-object v3, p0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;->na:Lcom/google/common/collect/Multimaps$MapMultimap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/google/common/collect/Multimaps$MapMultimap;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 1101
    new-instance v0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1;-><init>(Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1138
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_1

    .line 1146
    :cond_0
    :goto_0
    return v2

    .line 1141
    :cond_1
    check-cast p1, Ljava/util/Map$Entry;

    .line 1142
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 1145
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1146
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v3, v1, :cond_2

    iget-object v3, p0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;->na:Lcom/google/common/collect/Multimaps$MapMultimap;

    iget-object v3, v3, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/common/collect/Maps;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;->na:Lcom/google/common/collect/Multimaps$MapMultimap;

    iget-object v0, v0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
